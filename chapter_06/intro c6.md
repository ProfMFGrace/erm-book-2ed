
Case: Maersk and NotPetya – When Cyber Risk Repriced the Whole Portfolio

In late June 2017, A.P. Møller–Maersk, the world’s largest container shipping company, was running 76 ports and about 800 vessels worldwide, moving nearly one‑fifth of global container capacity. With over 75,000 employees in 130 countries, Maersk was deeply embedded in world trade. Cyber threats were on its risk maps, but not treated as an existential, enterprise-level hazard capable of simultaneously crippling revenue streams and operations across continents.

The NotPetya malware entered Maersk’s network via a seemingly routine compliance action: a Ukrainian office used the tax software M.E.Doc, seeded by attackers with backdoors. Once inside, NotPetya used the EternalBlue exploit and Mimikatz to rapidly jump across unsegmented, outdated Windows machines worldwide. In minutes, Maersk’s global operations were compromised.

The attack’s impact was immediate. Terminal operating systems serving 17 of 76 major international ports were wiped clean. Shipping ground to a halt—crane operators lost track of which containers to move, refrigerated cargo had to be managed by hand to avoid spoilage, and normal computer assitted coordination vanished. At the Port of Los Angeles, Maersk’s APM Terminal was closed for days, with ships queueing at anchor. Booking systems were down. The company resorted to using old fashioned paper records and consumer messaging apps in an effort to keep cargo moving.

As IT scrambled to disconnect the network and begin recovery, they found a coordinated attack had wiped out all global domain controllers. Maersk had assumed synchronized backups provided resilience, but had not planned for simultaneous erasure. Global restoration was only possible when a single offline backup was located—on a server in Ghana that had lost power during the attack. An employee physically transported the hard drive from Ghana to Nigeria, then to the UK, where recovery operations finally began. Rebuilding 4,000 servers and 45,000 PCs took about ten days, but lingering effects lasted months.

Financial losses were severe: Maersk reported $200M–$300M in direct impacts, widely believed by staff to be a conservative estimate. The White House, beleiving the attack to be from Russia, later cited $10B in total global damages across all affected firms. NotPetya disrupted multiple Maersk businesses at once, from logistics and port operations to internal booking, illustrating how “technical” cyber risk could trigger system-wide, correlated losses across operational, financial, and reputational lines.

After the event, Maersk overhauled its technology portfolio and risk approach—approving nearly every new cyber defense its staff requested, including rapid upgrades, better network segmentation, and robust, distributed backups. Leadership recast resilience as not just risk management, but a source of competitive advantage.

Maersk’s NotPetya experience stands as a striking documentation of how digital attacks can cause forensically-linked, global business interruptions, and a lesson in the need for true enterprise-level, portfolio-wide risk assessment—especially of latent dependencies that only a system shock can reveal.

Sources: Columbia University School of International and Public Affairs, “NotPetya: A Columbia University Case Study,” 2022. https://www.sipa.columbia.edu/sites/default/files/2022-11/NotPetya%20Final.pdf; Los Angeles Times (https://www.latimes.com/business/la-fi-maersk-cyberattack-20170817-story.html)

Greenberg, A. “The Untold Story of NotPetya, the Most Devastating Cyberattack in History.” WIRED. Aug. 22,
2018. https://www.wired.com/story/notpetya-cyberattack-ukraine-russia-code-crashed-the-world/

Greenberg, A. (2018, February 15). The White House blames Russia for NotPetya, the "most costly cyberattack in history". WIRED. https://www.wired.com/story/white-house-russia-notpetya-attribution/
