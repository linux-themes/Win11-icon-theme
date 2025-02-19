[1mdiff --git a/release.sh b/release.sh[m
[1mindex 7db1b7c..a3a3931 100755[m
[1m--- a/release.sh[m
[1m+++ b/release.sh[m
[36m@@ -1,10 +1,18 @@[m
 ROOT=$PWD[m
[32m+[m
[32m+[m[32mrm -rf $ROOT/release[m
 mkdir $ROOT/release[m
 [m
[32m+[m[32m$PWD/install.sh -d $PWD/release # Build[m
 $PWD/install.sh -a -d $PWD/release # Build[m
 [m
[31m-cd $ROOT/release; tar -cJvf $ROOT/Win11.tar.xz *; # Compress all[m
[32m+[m[32mcd $ROOT/release; tar -cJf $ROOT/Win11-all.tar.xz *; # Compress all[m
[32m+[m
[32m+[m[32mfor DIRECTORY in *; do[m[41m [m
[32m+[m[32m    tar -cJf $DIRECTORY.tar.xz $DIRECTORY;[m[41m [m
[32m+[m[32m    rm -rf $DIRECTORY[m
[32m+[m[32mdone # Compress one[m[41m [m
[32m+[m
[32m+[m[32mmv $ROOT/Win11-all.tar.xz $ROOT/release[m[41m [m
 [m
[31m-for DIRECTORY in *; do tar -cJvf $DIRECTORY.tar.xz $DIRECTORY; done # Compress one [m
 [m
[31m-mv $ROOT/Win11.tar.xz $ROOT/release [m
[1mdiff --git a/release/Win11-black-dark.tar.xz b/release/Win11-black-dark.tar.xz[m
[1mindex 8d0ad5d..5e20391 100644[m
Binary files a/release/Win11-black-dark.tar.xz and b/release/Win11-black-dark.tar.xz differ
[1mdiff --git a/release/Win11-black-dark/AUTHORS b/release/Win11-black-dark/AUTHORS[m
[1mdeleted file mode 100644[m
[1mindex f847631..0000000[m
[1m--- a/release/Win11-black-dark/AUTHORS[m
[1m+++ /dev/null[m
[36m@@ -1,9 +0,0 @@[m
[31m------------------------- Win11 ICON THEME ------------------------[m
[31m-[m
[31m-SOURCES:[m
[31m-yaru-icon-theme: https://github.com/ubuntu/yaru[m
[31m-[m
[31m-CUSTOMIZER:[m
[31m-yeyushengfan258 - Win11 icon theme (https://github.com/yeyushengfan258/Win11-icon-theme)[m
[31m-[m
[31m------------------------- Win11 ICON THEME ------------------------[m
[1mdiff --git a/release/Win11-black-dark/COPYING b/release/Win11-black-dark/COPYING[m
[1mdeleted file mode 100755[m
[1mindex 94a9ed0..0000000[m
[1m--- a/release/Win11-black-dark/COPYING[m
[1m+++ /dev/null[m
[36m@@ -1,674 +0,0 @@[m
[31m-                    GNU GENERAL PUBLIC LICENSE[m
[31m-                       Version 3, 29 June 2007[m
[31m-[m
[31m- Copyright (C) 2007 Free Software Foundation, Inc. <http://fsf.org/>[m
[31m- Everyone is permitted to copy and distribute verbatim copies[m
[31m- of this license document, but changing it is not allowed.[m
[31m-[m
[31m-                            Preamble[m
[31m-[m
[31m-  The GNU General Public License is a free, copyleft license for[m
[31m-software and other kinds of works.[m
[31m-[m
[31m-  The licenses for most software and other practical works are designed[m
[31m-to take away your freedom to share and change the works.  By contrast,[m
[31m-the GNU General Public License is intended to guarantee your freedom to[m
[31m-share and change all versions of a program--to make sure it remains free[m
[31m-software for all its users.  We, the Free Software Foundation, use the[m
[31m-GNU General Public License for most of our software; it applies also to[m
[31m-any other work released this way by its authors.  You can apply it to[m
[31m-your programs, too.[m
[31m-[m
[31m-  When we speak of free software, we are referring to freedom, not[m
[31m-price.  Our General Public Licenses are designed to make sure that you[m
[31m-have the freedom to distribute copies of free software (and charge for[m
[31m-them if you wish), that you receive source code or can get it if you[m
[31m-want it, that you can change the software or use pieces of it in new[m
[31m-free programs, and that you know you can do these things.[m
[31m-[m
[31m-  To protect your rights, we need to prevent others from denying you[m
[31m-these rights or asking you to surrender the rights.  Therefore, you have[m
[31m-certain responsibilities if you distribute copies of the software, or if[m
[31m-you modify it: responsibilities to respect the freedom of others.[m
[31m-[m
[31m-  For example, if you distribute copies of such a program, whether[m
[31m-gratis or for a fee, you must pass on to the recipients the same[m
[31m-freedoms that you received.  You must make sure that they, too, receive[m
[31m-or can get the source code.  And you must show them these terms so they[m
[31m-know their rights.[m
[31m-[m
[31m-  Developers that use the GNU GPL protect your rights with two steps:[m
[31m-(1) assert copyright on the software, and (2) offer you this License[m
[31m-giving you legal permission to copy, distribute and/or modify it.[m
[31m-[m
[31m-  For the developers' and authors' protection, the GPL clearly explains[m
[31m-that there is no warranty for this free software.  For both users' and[m
[31m-authors' sake, the GPL requires that modified versions be marked as[m
[31m-changed, so that their problems will not be attributed erroneously to[m
[31m-authors of previous versions.[m
[31m-[m
[31m-  Some devices are designed to deny users access to install or run[m
[31m-modified versions of the software inside them, although the manufacturer[m
[31m-can do so.  This is fundamentally incompatible with the aim of[m
[31m-protecting users' freedom to change the software.  The systematic[m
[31m-pattern of such abuse occurs in the area of products for individuals to[m
[31m-use, which is precisely where it is most unacceptable.  Therefore, we[m
[31m-have designed this version of the GPL to prohibit the practice for those[m
[31m-products.  If such problems arise substantially in other domains, we[m
[31m-stand ready to extend this provision to those domains in future versions[m
[31m-of the GPL, as needed to protect the freedom of users.[m
[31m-[m
[31m-  Finally, every program is threatened constantly by software patents.[m
[31m-States should not allow patents to restrict development and use of[m
[31m-software on general-purpose computers, but in those that do, we wish to[m
[31m-avoid the special danger that patents applied to a free program could[m
[31m-make it effectively proprietary.  To prevent this, the GPL assures that[m
[31m-patents cannot be used to render the program non-free.[m
[31m-[m
[31m-  The precise terms and conditions for copying, distribution and[m
[31m-modification follow.[m
[31m-[m
[31m-                       TERMS AND CONDITIONS[m
[31m-[m
[31m-  0. Definitions.[m
[31m-[m
[31m-  "This License" refers to version 3 of the GNU General Public License.[m
[31m-[m
[31m-  "Copyright" also means copyright-like laws that apply to other kinds of[m
[31m-works, such as semiconductor masks.[m
[31m-[m
[31m-  "The Program" refers to any copyrightable work licensed under this[m
[31m-License.  Each licensee is addressed as "you".  "Licensees" and[m
[31m-"recipients" may be individuals or organizations.[m
[31m-[m
[31m-  To "modify" a work means to copy from or adapt all or part of the work[m
[31m-in a fashion requiring copyright permission, other than the making of an[m
[31m-exact copy.  The resulting work is called a "modified version" of the[m
[31m-earlier work or a work "based on" the earlier work.[m
[31m-[m
[31m-  A "covered work" means either the unmodified Program or a work based[m
[31m-on the Program.[m
[31m-[m
[31m-  To "propagate" a work means to do anything with it that, without[m
[31m-permission, would make you directly or secondarily liable for[m
[31m-infringement under applicable copyright law, except executing it on a[m
[31m-computer or modifying a private copy.  Propagation includes copying,[m
[31m-distribution (with or without modification), making available to the[m
[31m-public, and in some countries other activities as well.[m
[31m-[m
[31m-  To "convey" a work means any kind of propagation that enables other[m
[31m-parties to make or receive copies.  Mere interaction with a user through[m
[31m-a computer network, with no transfer of a copy, is not conveying.[m
[31m-[m
[31m-  An interactive user interface displays "Appropriate Legal Notices"[m
[31m-to the extent that it includes a convenient and prominently visible[m
[31m-feature that (1) displays an appropriate copyright notice, and (2)[m
[31m-tells the user that there is no warranty for the work (except to the[m
[31m-extent that warranties are provided), that licensees may convey the[m
[31m-work under this License, and how to view a copy of this License.  If[m
[31m-the interface presents a list of user commands or options, such as a[m
[31m-menu, a prominent item in the list meets this criterion.[m
[31m-[m
[31m-  1. Source Code.[m
[31m-[m
[31m-  The "source code" for a work means the preferred form of the work[m
[31m-for making modifications to it.  "Object code" means any non-source[m
[31m-form of a work.[m
[31m-[m
[31m-  A "Standard Interface" means an interface that either is an official[m
[31m-standard defined by a recognized standards body, or, in the case of[m
[31m-interfaces specified for a particular programming language, one that[m
[31m-is widely used among developers working in that language.[m
[31m-[m
[31m-  The "System Libraries" of an executable work include anything, other[m
[31m-than the work as a whole, that (a) is included in the normal form of[m
[31m-packaging a Major Component, but which is not part of that Major[m
[31m-Component, and (b) serves only to enable use of the work with that[m
[31m-Major Component, or to implement a Standard Interface for which an[m
[31m-implementation is available to the public in source code form.  A[m
[31m-"Major Component", in this context, means a major essential component[m
[31m-(kernel, window system, and so on) of the specific operating system[m
[31m-(if any) on which the executable work runs, or a compiler used to[m
[31m-produce the work, or an object code interpreter used to run it.[m
[31m-[m
[31m-  The "Corresponding Source" for a work in object code form means all[m
[31m-the source code needed to generate, install, and (for an executable[m
[31m-work) run the object code and to modify the work, including scripts to[m
[31m-control those activities.  However, it does not include the work's[m
[31m-System Libraries, or general-purpose tools or generally available free[m
[31m-programs which are used unmodified in performing those activities but[m
[31m-which are not part of the work.  For example, Corresponding Source[m
[31m-includes interface definition files associated with source files for[m
[31m-the work, and the source code for shared libraries and dynamically[m
[31m-linked subprograms that the work is specifically designed to require,[m
[31m-such as by intimate data communication or control flow between those[m
[31m-subprograms and other parts of the work.[m
[31m-[m
[31m-  The Corresponding Source need not include anything that users[m
[31m-can regenerate automatically from other parts of the Corresponding[m
[31m-Source.[m
[31m-[m
[31m-  The Corresponding Source for a work in source code form is that[m
[31m-same work.[m
[31m-[m
[31m-  2. Basic Permissions.[m
[31m-[m
[31m-  All rights granted under this License are granted for the term of[m
[31m-copyright on the Program, and are irrevocable provided the stated[m
[31m-conditions are met.  This License explicitly affirms your unlimited[m
[31m-permission to run the unmodified Program.  The output from running a[m
[31m-covered work is covered by this License only if the output, given its[m
[31m-content, constitutes a covered work.  This License acknowledges your[m
[31m-rights of fair use or other equivalent, as provided by copyright law.[m
[31m-[m
[31m-  You may make, run and propagate covered works that you do not[m
[31m-convey, without conditions so long as your license otherwise remains[m
[31m-in force.  You may convey covered works to others for the sole purpose[m
[31m-of having them make modifications exclusively for you, or provide you[m
[31m-with facilities for running those works, provided that you comply with[m
[31m-the terms of this License in conveying all material for which you do[m
[31m-not control copyright.  Those thus making or running the covered works[m
[31m-for you must do so exclusively on your behalf, under your direction[m
[31m-and control, on terms that prohibit them from making any copies of[m
[31m-your copyrighted material outside their relationship with you.[m
[31m-[m
[31m-  Conveying under any other circumstances is permitted solely under[m
[31m-the conditions stated below.  Sublicensing is not allowed; section 10[m
[31m-makes it unnecessary.[m
[31m-[m
[31m-  3. Protecting Users' Legal Rights From Anti-Circumvention Law.[m
[31m-[m
[31m-  No covered work shall be deemed part of an effective technological[m
[31m-measure under any applicable law fulfilling obligations under article[m
[31m-11 of the WIPO copyright treaty adopted on 20 December 1996, or[m
[31m-similar laws prohibiting or restricting circumvention of such[m
[31m-measures.[m
[31m-[m
[31m-  When you convey a covered work, you waive any legal power to forbid[m
[31m-circumvention of technological measures to the extent such circumvention[m
[31m-is effected by exercising rights under this License with respect to[m
[31m-the covered work, and you disclaim any intention to limit operation or[m
[31m-modification of the work as a means of enforcing, against the work's[m
[31m-users, your or third parties' legal rights to forbid circumvention of[m
[31m-technological measures.[m
[31m-[m
[31m-  4. Conveying Verbatim Copies.[m
[31m-[m
[31m-  You may convey verbatim copies of the Program's source code as you[m
[31m-receive it, in any medium, provided that you conspicuously and[m
[31m-appropriately publish on each copy an appropriate copyright notice;[m
[31m-keep intact all notices stating that this License and any[m
[31m-non-permissive terms added in accord with section 7 apply to the code;[m
[31m-keep intact all notices of the absence of any warranty; and give all[m
[31m-recipients a copy of this License along with the Program.[m
[31m-[m
[31m-  You may charge any price or no price for each copy that you convey,[m
[31m-and you may offer support or warranty protection for a fee.[m
[31m-[m
[31m-  5. Conveying Modified Source Versions.[m
[31m-[m
[31m-  You may convey a work based on the Program, or the modifications to[m
[31m-produce it from the Program, in the form of source code under the[m
[31m-terms of section 4, provided that you also meet all of these conditions:[m
[31m-[m
[31m-    a) The work must carry prominent notices stating that you modified[m
[31m-    it, and giving a relevant date.[m
[31m-[m
[31m-    b) The work must carry prominent notices stating that it is[m
[31m-    released under this License and any conditions added under section[m
[31m-    7.  This requirement modifies the requirement in section 4 to[m
[31m-    "keep intact all notices".[m
[31m-[m
[31m-    c) You must license the entire work, as a whole, under this[m
[31m-    License to anyone who comes into possession of a copy.  This[m
[31m-    License will therefore apply, along with any applicable section 7[m
[31m-    additional terms, to the whole of the work, and all its parts,[m
[31m-    regardless of how they are packaged.  This License gives no[m
[31m-    permission to license the work in any other way, but it does not[m
[31m-    invalidate such permission if you have separately received it.[m
[31m-[m
[31m-    d) If the work has interactive user interfaces, each must display[m
[31m-    Appropriate Legal Notices; however, if the Program has interactive[m
[31m-    interfaces that do not display Appropriate Legal Notices, your[m
[31m-    work need not make them do so.[m
[31m-[m
[31m-  A compilation of a covered work with other separate and independent[m
[31m-works, which are not by their nature extensions of the covered work,[m
[31m-and which are not combined with it such as to form a larger program,[m
[31m-in or on a volume of a storage or distribution medium, is called an[m
[31m-"aggregate" if the compilation and its resulting copyright are not[m
[31m-used to limit the access or legal rights of the compilation's users[m
[31m-beyond what the individual works permit.  Inclusion of a covered work[m
[31m-in an aggregate does not cause this License to apply to the other[m
[31m-parts of the aggregate.[m
[31m-[m
[31m-  6. Conveying Non-Source Forms.[m
[31m-[m
[31m-  You may convey a covered work in object code form under the terms[m
[31m-of sections 4 and 5, provided that you also convey the[m
[31m-machine-readable Corresponding Source under the terms of this License,[m
[31m-in one of these ways:[m
[31m-[m
[31m-    a) Convey the object code in, or embodied in, a physical product[m
[31m-    (including a physical distribution medium), accompanied by the[m
[31m-    Corresponding Source fixed on a durable physical medium[m
[31m-    customarily used for software interchange.[m
[31m-[m
[31m-    b) Convey the object code in, or embodied in, a physical product[m
[31m-    (including a physical distribution medium), accompanied by a[m
[31m-    written offer, valid for at least three years and valid for as[m
[31m-    long as you offer spare parts or customer support for that product[m
[31m-    model, to give anyone who possesses the object code either (1) a[m
[31m-    copy of the Corresponding Source for all the software in the[m
[31m-    product that is covered by this License, on a durable physical[m
[31m-    medium customarily used for software interchange, for a price no[m
[31m-    more than your reasonable cost of physically performing this[m
[31m-    conveying of source, or (2) access to copy the[m
[31m-    Corresponding Source from a network server at no charge.[m
[31m-[m
[31m-    c) Convey individual copies of the object code with a copy of the[m
[31m-    written offer to provide the Corresponding Source.  This[m
[31m-    alternative is allowed only occasionally and noncommercially, and[m
[31m-    only if you received the object code with such an offer, in accord[m
[31m-    with subsection 6b.[m
[31m-[m
[31m-    d) Convey the object code by offering access from a designated[m
[31m-    place (gratis or for a charge), and offer equivalent access to the[m
[31m-    Corresponding Source in the same way through the same place at no[m
[31m-    further charge.  You need not require recipients to copy the[m
[31m-    Corresponding Source along with the object code.  If the place to[m
[31m-    copy the object code is a network server, the Corresponding Source[m
[31m-    may be on a different server (operated by you or a third party)[m
[31m-    that supports equivalent copying facilities, provided you maintain[m
[31m-    clear directions next to the object code saying where to find the[m
[31m-    Corresponding Source.  Regardless of what server hosts the[m
[31m-    Corresponding Source, you remain obligated to ensure that it is[m
[31m-    available for as long as needed to satisfy these requirements.[m
[31m-[m
[31m-    e) Convey the object code using peer-to-peer transmission, provided[m
[31m-    you inform other peers where the object code and Corresponding[m
[31m-    Source of the work are being offered to the general public at no[m
[31m-    charge under subsection 6d.[m
[31m-[m
[31m-  A separable portion of the object code, whose source code is excluded[m
[31m-from the Corresponding Source as a System Library, need not be[m
[31m-included in conveying the object code work.[m
[31m-[m
[31m-  A "User Product" is either (1) a "consumer product", which means any[m
[31m-tangible personal property which is normally used for personal, family,[m
[31m-or household purposes, or (2) anything designed or sold for incorporation[m
[31m-into a dwelling.  In determining whether a product is a consumer product,[m
[31m-doubtful cases shall be resolved in favor of coverage.  For a particular[m
[31m-product received by a particular user, "normally used" refers to a[m
[31m-typical or common use of that class of product, regardless of the status[m
[31m-of the particular user or of the way in which the particular user[m
[31m-actually uses, or expects or is expected to use, the product.  A product[m
[31m-is a consumer product regardless of whether the product has substantial[m
[31m-commercial, industrial or non-consumer uses, unless such uses represent[m
[31m-the only significant mode of use of the product.[m
[31m-[m
[31m-  "Installation Information" for a User Product means any methods,[m
[31m-procedures, authorization keys, or other information required to install[m
[31m-and execute modified versions of a covered work in that User Product from[m
[31m-a modified version of its Corresponding Source.  The information must[m
[31m-suffice to ensure that the continued functioning of the modified object[m
[31m-code is in no case prevented or interfered with solely because[m
[31m-modification has been made.[m
[31m-[m
[31m-  If you convey an object code work under this section in, or with, or[m
[31m-specifically for use in, a User Product, and the conveying occurs as[m
[31m-part of a transaction in which the right of possession and use of the[m
[31m-User Product is transferred to the recipient in perpetuity or for a[m
[31m-fixed term (regardless of how the transaction is characterized), the[m
[31m-Corresponding Source conveyed under this section must be accompanied[m
[31m-by the Installation Information.  But this requirement does not apply[m
[31m-if neither you nor any third party retains the ability to install[m
[31m-modified object code on the User Product (for example, the work has[m
[31m-been installed in ROM).[m
[31m-[m
[31m-  The requirement to provide Installation Information does not include a[m
[31m-requirement to continue to provide support service, warranty, or updates[m
[31m-for a work that has been modified or installed by the recipient, or for[m
[31m-the User Product in which it has been modified or installed.  Access to a[m
[31m-network may be denied when the modification itself materially and[m
[31m-adversely affects the operation of the network or violates the rules and[m
[31m-protocols for communication across the network.[m
[31m-[m
[31m-  Corresponding Source conveyed, and Installation Information provided,[m
[31m-in accord with this section must be in a format that is publicly[m
[31m-documented (and with an implementation available to the public in[m
[31m-source code form), and must require no special password or key for[m
[31m-unpacking, reading or copying.[m
[31m-[m
[31m-  7. Additional Terms.[m
[31m-[m
[31m-  "Additional permissions" are terms that supplement the terms of this[m
[31m-License by making exceptions from one or more of its conditions.[m
[31m-Additional permissions that are applicable to the entire Program shall[m
[31m-be treated as though they were included in this License, to the extent[m
[31m-that they are valid under applicable law.  If additional permissions[m
[31m-apply only to part of the Program, that part may be used separately[m
[31m-under those permissions, but the entire Program remains governed by[m
[31m-this License without regard to the additional permissions.[m
[31m-[m
[31m-  When you convey a copy of a covered work, you may at your option[m
[31m-remove any additional permissions from that copy, or from any part of[m
[31m-it.  (Additional permissions may be written to require their own[m
[31m-removal in certain cases when you modify the work.)  You may place[m
[31m-additional permissions on material, added by you to a covered work,[m
[31m-for which you have or can give appropriate copyright permission.[m
[31m-[m
[31m-  Notwithstanding any other provision of this License, for material you[m
[31m-add to a covered work, you may (if authorized by the copyright holders of[m
[31m-that material) supplement the terms of this License with terms:[m
[31m-[m
[31m-    a) Disclaiming warranty or limiting liability differently from the[m
[31m-    terms of sections 15 and 16 of this License; or[m
[31m-[m
[31m-    b) Requiring preservation of specified reasonable legal notices or[m
[31m-    author attributions in that material or in the Appropriate Legal[m
[31m-    Notices displayed by works containing it; or[m
[31m-[m
[31m-    c) Prohibiting misrepresentation of the origin of that material, or[m
[31m-    requiring that modified versions of such material be marked in[m
[31m-    reasonable ways as different from the original version; or[m
[31m-[m
[31m-    d) Limiting the use for publicity purposes of names of licensors or[m
[31m-    authors of the material; or[m
[31m-[m
[31m-    e) Declining to grant rights under trademark law for use of some[m
[31m-    trade names, trademarks, or service marks; or[m
[31m-[m
[31m-    f) Requiring indemnification of licensors and authors of that[m
[31m-    material by anyone who conveys the material (or modified versions of[m
[31m-    it) with contractual assumptions of liability to the recipient, for[m
[31m-    any liability that these contractual assumptions directly impose on[m
[31m-    those licensors and authors.[m
[31m-[m
[31m-  All other non-permissive additional terms are considered "further[m
[31m-restrictions" within the meaning of section 10.  If the Program as you[m
[31m-received it, or any part of it, contains a notice stating that it is[m
[31m-governed by this License along with a term that is a further[m
[31m-restriction, you may remove that term.  If a license document contains[m
[31m-a further restriction but permits relicensing or conveying under this[m
[31m-License, you may add to a covered work material governed by the terms[m
[31m-of that license document, provided that the further restriction does[m
[31m-not survive such relicensing or conveying.[m
[31m-[m
[31m-  If you add terms to a covered work in accord with this section, you[m
[31m-must place, in the relevant source files, a statement of the[m
[31m-additional terms that apply to those files, or a notice indicating[m
[31m-where to find the applicable terms.[m
[31m-[m
[31m-  Additional terms, permissive or non-permissive, may be stated in the[m
[31m-form of a separately written license, or stated as exceptions;[m
[31m-the above requirements apply either way.[m
[31m-[m
[31m-  8. Termination.[m
[31m-[m
[31m-  You may not propagate or modify a covered work except as expressly[m
[31m-provided under this License.  Any attempt otherwise to propagate or[m
[31m-modify it is void, and will automatically terminate your rights under[m
[31m-this License (including any patent licenses granted under the third[m
[31m-paragraph of section 11).[m
[31m-[m
[31m-  However, if you cease all violation of this License, then your[m
[31m-license from a particular copyright holder is reinstated (a)[m
[31m-provisionally, unless and until the copyright holder explicitly and[m
[31m-finally terminates your license, and (b) permanently, if the copyright[m
[31m-holder fails to notify you of the violation by some reasonable means[m
[31m-prior to 60 days after the cessation.[m
[31m-[m
[31m-  Moreover, your license from a particular copyright holder is[m
[31m-reinstated permanently if the copyright holder notifies you of the[m
[31m-violation by some reasonable means, this is the first time you have[m
[31m-received notice of violation of this License (for any work) from that[m
[31m-copyright holder, and you cure the violation prior to 30 days after[m
[31m-your receipt of the notice.[m
[31m-[m
[31m-  Termination of your rights under this section does not terminate the[m
[31m-licenses of parties who have received copies or rights from you under[m
[31m-this License.  If your rights have been terminated and not permanently[m
[31m-reinstated, you do not qualify to receive new licenses for the same[m
[31m-material under section 10.[m
[31m-[m
[31m-  9. Acceptance Not Required for Having Copies.[m
[31m-[m
[31m-  You are not required to accept this License in order to receive or[m
[31m-run a copy of the Program.  Ancillary propagation of a covered work[m
[31m-occurring solely as a consequence of using peer-to-peer transmission[m
[31m-to receive a copy likewise does not require acceptance.  However,[m
[31m-nothing other than this License grants you permission to propagate or[m
[31m-modify any covered work.  These actions infringe copyright if you do[m
[31m-not accept this License.  Therefore, by modifying or propagating a[m
[31m-covered work, you indicate your acceptance of this License to do so.[m
[31m-[m
[31m-  10. Automatic Licensing of Downstream Recipients.[m
[31m-[m
[31m-  Each time you convey a covered work, the recipient automatically[m
[31m-receives a license from the original licensors, to run, modify and[m
[31m-propagate that work, subject to this License.  You are not responsible[m
[31m-for enforcing compliance by third parties with this License.[m
[31m-[m
[31m-  An "entity transaction" is a transaction transferring control of an[m
[31m-organization, or substantially all assets of one, or subdividing an[m
[31m-organization, or merging organizations.  If propagation of a covered[m
[31m-work results from an entity transaction, each party to that[m
[31m-transaction who receives a copy of the work also receives whatever[m
[31m-licenses to the work the party's predecessor in interest had or could[m
[31m-give under the previous paragraph, plus a right to possession of the[m
[31m-Corresponding Source of the work from the predecessor in interest, if[m
[31m-the predecessor has it or can get it with reasonable efforts.[m
[31m-[m
[31m-  You may not impose any further restrictions on the exercise of the[m
[31m-rights granted or affirmed under this License.  For example, you may[m
[31m-not impose a license fee, royalty, or other charge for exercise of[m
[31m-rights granted under this License, and you may not initiate litigation[m
[31m-(including a cross-claim or counterclaim in a lawsuit) alleging that[m
[31m-any patent claim is infringed by making, using, selling, offering for[m
[31m-sale, or importing the Program or any portion of it.[m
[31m-[m
[31m-  11. Patents.[m
[31m-[m
[31m-  A "contributor" is a copyright holder who authorizes use under this[m
[31m-License of the Program or a work on which the Program is based.  The[m
[31m-work thus licensed is called the contributor's "contributor version".[m
[31m-[m
[31m-  A contributor's "essential patent claims" are all patent claims[m
[31m-owned or controlled by the contributor, whether already acquired or[m
[31m-hereafter acquired, that would be infringed by some manner, permitted[m
[31m-by this License, of making, using, or selling its contributor version,[m
[31m-but do not include claims that would be infringed only as a[m
[31m-consequence of further modification of the contributor version.  For[m
[31m-purposes of this definition, "control" includes the right to grant[m
[31m-patent sublicenses in a manner consistent with the requirements of[m
[31m-this License.[m
[31m-[m
[31m-  Each contributor grants you a non-exclusive, worldwide, royalty-free[m
[31m-patent license under the contributor's essential patent claims, to[m
[31m-make, use, sell, offer for sale, import and otherwise run, modify and[m
[31m-propagate the contents of its contributor version.[m
[31m-[m
[31m-  In the following three paragraphs, a "patent license" is any express[m
[31m-agreement or commitment, however denominated, not to enforce a patent[m
[31m-(such as an express permission to practice a patent or covenant not to[m
[31m-sue for patent infringement).  To "grant" such a patent license to a[m
[31m-party means to make such an agreement or commitment not to enforce a[m
[31m-patent against the party.[m
[31m-[m
[31m-  If you convey a covered work, knowingly relying on a patent license,[m
[31m-and the Corresponding Source of the work is not available for anyone[m
[31m-to copy, free of charge and under the terms of this License, through a[m
[31m-publicly available network server or other readily accessible means,[m
[31m-then you must either (1) cause the Corresponding Source to be so[m
[31m-available, or (2) arrange to deprive yourself of the 