---
layout: opinions
---

## Agentic Software

- As AI generates more implementation, humans should own and review the spec, acceptance criteria, and verification contract rather than every line of code.
  <!-- opinion-id: opinion-000001 -->
  <!-- sources: rw:01kkvnzbr8p6g2vtr1wnxdf5g0, rw:01kkt3pncjjjsrs8dv3pa3g4tk, rw:01kkt4ee5w23y80yqwmy77xpr0 -->

- Making code cheap to generate can create comprehension debt when teams optimize for passing tests and merge velocity without maintaining genuine understanding.
  <!-- opinion-id: opinion-000002 -->
  <!-- sources: rw:01km6w5j2etpssfcbyjk75spx5, rw:01km6w6qb90sfan8c6dnfgrsx3 -->

- As AI commoditizes implementation, high-quality intent becomes the scarce skill: having ideas worth pursuing, articulating what good looks like, and judging whether an agent's output is actually good.
  <!-- opinion-id: opinion-000003 -->
  <!-- sources: rw:01kkvb1sj4r2fnjczr3zdwyq9m, rw:01kp1xajs4em2bhwcs3rz0j2wq -->

- With coding agents by my side, I believe I can do anything in software: they make previously impractical projects, investigations, and improvements feasible by collapsing the cost of implementation and validation. As execution becomes commoditized, the differentiating skill is a nose for correctness—the ability to notice what feels wrong, reason from first principles about what right looks like, and care enough to keep pushing until it is right.
  <!-- opinion-id: opinion-000063 -->
  <!-- sources: rw:01kxttky23nqp9erjgknbqgnkp, rw:01kxttm7devch5x32z8rv33mfd -->

- As AI makes implementation cheap, product quality depends increasingly on disciplined subtraction. Simplicity is not merely the absence of features; it comes from understanding users and problems deeply enough to know what to remove, leave alone, or never build. Teams should judge additions by whether they improve the outcome, not by whether agents make them easy to produce.
  <!-- opinion-id: opinion-000052 -->
  <!-- sources: rw:01kvpcgd5phxv29mnxv4mxa7tn, reader-summary:01kw82jrbzr6qmpn06em2e28pw -->

- Private test suites can be more durable than the generated implementation they verify; SQLite's closed test suite is a clearer moat than its open-source core.
  <!-- opinion-id: opinion-000004 -->
  <!-- sources: rw:01knfpajparaa0by09exzazyka -->

- Generalist base models are likely to beat domain-specific base models because intelligence from different fields builds on itself; domain-specific models mainly make sense if we hit physical limits in model size.
  <!-- opinion-id: opinion-000014 -->
  <!-- sources: reader-summary:01knheqfs4r61jy1ffvtbayqs8 -->

- Specs can shift implementation out of code, but they do not remove the need for precise design; a specification detailed enough to reliably generate working software starts to become code or code-like formal language.
  <!-- opinion-id: opinion-000017 -->
  <!-- sources: rw:01kp4spezcbaka7nxvzn7wm08h -->

- Agent systems should keep the harness thin, put reusable judgment and process in skills, and push repeatable execution into deterministic tools so model improvements compound without making reliability depend on the model.
  <!-- opinion-id: opinion-000018 -->
  <!-- sources: rw:01kp4ry1ctwkkkh49m80pbk6dm, rw:01kp4s1p54d7xewx3zfvv17wan, rw:01kp4s84v3vh8njpq3y815kcfn -->

- In agentic product work, Figma is in an awkward position: when the product ultimately lives in code, the design source of truth should move closer to executable code rather than a manual, pre-agentic replica of the system.
  <!-- opinion-id: opinion-000021 -->
  <!-- sources: rw:01kpph104zd1vdw0vkdqpsc6m9 -->

- As models improve, agent prompts and harnesses should simplify rather than accumulate instructions that compensate for yesterday's weaknesses. Hand-tuned prompts are useful for prototypes and one-off tasks, but sprawling prose patches create prompt debt and lock systems to model-specific quirks. Durable behavior should live in canonical examples, evaluations, metrics, and typed constraints, so prompts can be searched or generated against measurable outcomes and obsolete scaffolding can be removed as capability advances.
  <!-- opinion-id: opinion-000028 -->
  <!-- sources: rw:01kr1e39kwmpkhr3jmqz7ayjtz, rw:01kr1gd42xk8r6ttgm3as7dx56, reader-summary:01kw82hq01wyqj4pvtteyvwepy -->

- Every token in a prompt is part of an executable behavioral specification: a single adjective can silently change model behavior, and examples often override explicit instructions. Prompt review should therefore treat examples and wording like code, testing small edits for regressions rather than assuming prose is neutral or that another rule will safely correct a failure.
  <!-- opinion-id: opinion-000064 -->
  <!-- sources: rw:01kyg336anwz7nd06myrth3gys, rw:01kyg36dshvt3jzffb5193ew3p -->

- AI coding should be used as a learning loop, not just an issue-closing machine; if the model removes all friction without forcing hypotheses, explanations, and reflection, cognitive debt accumulates.
  <!-- opinion-id: opinion-000032 -->
  <!-- sources: rw:01ks4c170xt36eey5bq8sj0n5c, rw:01ks4c4wb18w1f86pc9dmj85ba, rw:01ks4c4zva18j35mcqvabwm870, rw:01ks4c5y6tq22mq95sm432mc83, rw:01ks4c5kbce54yadfx1fwytfz2 -->

- Agent systems should choose their execution surface by workflow. For compositional workflows, a small sandboxed code-execution surface can be better than a large catalog of bespoke tools because code provides deterministic control flow, filters intermediate data, and creates reusable artifacts; security should come from typed capabilities and scoped permissions beneath the model. But bash or arbitrary code execution is not universally necessary, and many enterprise tasks are better served by task-specific, constrained tools.
  <!-- opinion-id: opinion-000035 -->
  <!-- sources: rw:01kskq8p9jv6843n8xhktvc31b, reader-note:01kp70dfsh9taejhdym1d5qm4a, reader-note:01kqctk7cvpm01de2a4dbxn9hf, reader-summary:01ky84y2zeerdqhz9fdadmk0gy -->

- People remain accountable for AI-generated artifacts they ship and should understand them well enough to defend them under questioning; review culture should give harsh, specific pushback when output crosses into slop.
  <!-- opinion-id: opinion-000039 -->
  <!-- sources: rw:01kt7p7hczwhjqkstr4zeqhpzx, rw:01kt7p7s76qx5c04gzkw0mn0tz -->

- For code I care about, speed is not worth surrendering taste, control, or understanding. Current models often replace strong invariants with defensive fallbacks, duplicate code, poor abstractions, and local patches that make bad states—and machine-dependent maintenance—more likely. Human oversight must preserve coherent design, a high bar, and understanding of what I ship.
  <!-- opinion-id: opinion-000054 -->
  <!-- sources: rw:01kwakxpb46n3ypb93saym2cgt, rw:01kwam66dc9x2bx4wkk6samcj0, reader-summary:01m25sn8bp1rajaah0c9cvhve2 -->

- SlopCodeBench is a useful signal that today's models cannot reliably perform real-shaped, issue-by-issue software engineering without human steering. Success on isolated coding tasks should not be mistaken for the ability to run production development lights-off.
  <!-- opinion-id: opinion-000065 -->
  <!-- sources: rw:01kynf22gzg9grdfsxywjb9fv6 -->

- Agentic throughput is capped by human review bandwidth, not by how many workers the UI can spawn; the right amount of parallelism is the work you can actually evaluate without surrendering standards.
  <!-- opinion-id: opinion-000040 -->
  <!-- sources: rw:01kt868v6vctcfvazfy805hpmn, rw:01kt86bmyk96v9fbg4z9g1a945, rw:01kyr5441qt9wfk233qfy0gfh8 -->

- A good vertical agent is a faithful compression of its task distribution: common capabilities belong in fast, always-loaded prompt context, rarer capabilities belong in discoverable tiers, and complete underlying references should remain searchable for the rare cases the curated layers do not cover.
  <!-- opinion-id: opinion-000042 -->
  <!-- sources: rw:01ktzkwnv9j8qwz0pe54r15dyr, rw:01ktzkxkv9845tfj42wc7qegbb, rw:01ktzm06bzb7fb6g4j2g639n96 -->

- Agentic optimization is only as good as its loss function: if the target, constraints, and instruments leave cheap paths open, the agent will exploit them instead of getting genuinely better.
  <!-- opinion-id: opinion-000043 -->
  <!-- sources: rw:01kv16ca95y0hhdjhnxqf1zfzh -->

- Building new software is learning under uncertainty; the right move is to expose the unknown parts to valuable feedback quickly, whether from CI, teammates, users, customers, or your own use.
  <!-- opinion-id: opinion-000044 -->
  <!-- sources: rw:01kts5rs2pw3jm9emexfz68dv8 -->

- For AI products, private eval sets and real user edge cases can be more durable than the product artifact because they define quality against failure modes competitors cannot see.
  <!-- opinion-id: opinion-000046 -->
  <!-- sources: rw:01kv1xmg4addxx1z2p41kz4jbh -->

- Do not turn a greenfield project into an autonomous software factory immediately. First pair with a coding agent to build the initial 3–10k lines and first few end-to-end features, establishing patterns, contracts, scaffolding, and a legible direction. Automating before those foundations exist tends to create code bloat and make the system harder to understand.
  <!-- opinion-id: opinion-000048 -->
  <!-- sources: rw:01kv6nc8acw97aymnfmxr2e9fs -->

- Use broad agents to explore open-ended problems, but once a repeatable solution path is understood, encode it as a narrow, controlled system. Making an agent rediscover the same path on every run repeatedly pays for exploration while reintroducing variance; bounded stages, explicit contracts, and deterministic checks make production workflows cheaper, safer, and easier to evaluate.
  <!-- opinion-id: opinion-000083 -->
  <!-- sources: rw:01m2vcsjj1304gf98p55e1h27p, rw:01m2vcsp33zckv1ksexe765bq8 -->

- Treat prompts as product code rather than endlessly appending instructions without removing or reconciling old ones, which creates contradictions and confusion. Structure them into non-overlapping, collectively complete concerns and refactor as behavior evolves. Higher model intelligence cannot resolve ambiguous or contradictory preferences; humans must specify the intended experience. Clear modular prompts reduce regressions and isolate changes.
  <!-- opinion-id: opinion-000084 -->
  <!-- sources: rw:01m2vdhcmmcw52jatmsgf3rg8a, rw:01m2vdjk342mgs1f4z6wz94xrg, rw:01m2vdrmmct4xsqw0xxac0v3f7, rw:01m2vmgsbh399d14m2dxjr4pbz -->

## AI And Learning

- AI makes volition more important, not less. The people who benefit most will actively wrestle with it to strengthen their own capabilities and accomplish more, rather than using it merely to avoid effort. Education should therefore prioritize the desire to work hard, learn, and put abundant machine knowledge to creative use.
  <!-- opinion-id: opinion-000067 -->
  <!-- sources: rw:01kz46hcbds3p82ecg9f2s4z3c, rw:01kz4ak3s84yhqs7947rdcf481 -->

## Learning

- Learning speed is often constrained less by practice volume than by feedback latency. Repetition without timely correction can entrench mistakes, so evaluate a learning process by how quickly it reveals that you are wrong and lets the next attempt incorporate that information.
  <!-- opinion-id: opinion-000079 -->
  <!-- sources: rw:01m1g6pmf1dn7kgetrjs025ape -->

- Learn just in time from real problems rather than preparing abstractly for every possible need. Starting with the problem lets reality design the curriculum, makes new information immediately usable, and prevents broad preparation from becoming a substitute for doing the work.
  <!-- opinion-id: opinion-000080 -->
  <!-- sources: rw:01m1g6txpr06adb7ag4sm8abgw, rw:01m1g6x59sqwnr27sg53qkg6cw -->

## AI And Expertise

- Stronger language models increase the leverage of domain expertise rather than making it irrelevant. Experts can form better questions, recognize promising answers, reject superficially plausible ones, and steer the model using a theory of the domain. For many difficult tasks, the bottleneck is the human's ability to specify and evaluate the desired solution, not whether the model contains the needed information. Example: Terence Tao's conversation with ChatGPT.
  <!-- opinion-id: opinion-000069 -->
  <!-- sources: rw:01kz7hfk8qpf650cnvq5af2jdp, rw:01kz7hgqd4ybpjefhecey60g91, rw:01kz7hgzsjq0qcyvfxxcf5wpfq, rw:01kz7hn26gzmf0c7z8zej6p21m -->

## AI Product Development

- Long-horizon agents are best suited to executing already-understood requirements, not autonomously creating novel products. Novel work discovers its requirements through small prototypes, real-world feedback, and repeated human judgments about usefulness, intuition, and delight. Given the state of models today, tight human-agent feedback loops are much better for this work than agents that disappear for long stretches and return with fully built solutions, because current models cannot make those qualitative judgments themselves.
  <!-- opinion-id: opinion-000070 -->
  <!-- sources: reader-summary:01kzme0d456m0s6yx9wrb0p2tk -->

## Product Strategy

- Forward-deployed engineers are valuable in new categories when field pain becomes input to a scalable product. Each deployment should make the next easier by turning bespoke discoveries into product primitives, so FDE involvement diminishes as the product matures. If engineers merely absorb recurring pain, the company has let a discovery mechanism harden into a services business.
  <!-- opinion-id: opinion-000071 -->
  <!-- sources: rw:01m08bkw2hdez9q1xwzb2bsqvm, rw:01m08bpjwd4zq0ajzdvv0hcqct, rw:01m08bzzr6vm7xexetjt9e4bn9, rw:01m2vnk5ftm0yqwha56ebn5bew -->

## AI And The Economy

- AI's economy-wide impact will arrive more slowly than its technical progress suggests because much of GDP sits in inefficient, regulated, governmental, or government-subsidized sectors that adopt new technology slowly and often use it poorly.
  <!-- opinion-id: opinion-000068 -->
  <!-- sources: rw:01kz58hb1w75qrp3mq1e0y83ys -->

## AI Products

- Most everyday AI queries are already beyond the point where users can reliably distinguish frontier models from cheaper or open-source alternatives. As quality converges for these common tasks, inference will commoditize toward free, bundled, local, or ad-supported access. Premium models will retain value mainly where capability differences materially affect outcomes, such as coding and science, while consumer competition shifts to privacy, integration, pricing, and the product around the model.
  <!-- opinion-id: opinion-000062 -->
  <!-- sources: reader-summary:01kxer7f3s8sec8qvmdkpmw0zz -->

- Demand for fast, cheap, good-enough AI models will surge because many business automations do not need frontier intelligence, and using the strongest model can erase their ROI. Products should remain model-neutral enough to route work by capability and cost. This positions OpenAI well, while Anthropic's high costs and limited focus on smaller, cheaper models put it at a disadvantage.
  <!-- opinion-id: opinion-000078 -->
  <!-- sources: rw:01m1cwdnhpajjp3a6022r6fqgf -->

## AI Leverage And Organizations

- Top builders and high-agency operators gain disproportionately more from AI than median users because they are better at choosing tasks, directing agents, and judging results.
  <!-- opinion-id: opinion-000005 -->
  <!-- sources: rw:01knfbbfq8bs5rq4y3pry1qk8m, rw:01kncyags3eh05xj99e9b1kg19 -->

- AI proficiency has an extreme three-tier distribution: even someone in the top 1% of users is far behind the frontier's very best operators, while standing across an even larger chasm from the median employee. Each release can widen these gaps because capability advances faster than most people develop skill. Enterprise rollouts should not confuse access with proficiency: put AI into background workflows for non-experts, let power users publish ranked reusable skills, and judge work outcomes rather than logins.
  <!-- opinion-id: opinion-000074 -->
  <!-- sources: rw:01m08erdka58vjr5zyvjw14yxr, rw:01m08ermp96kdgj79kkmfkxpc3 -->

- As AI makes execution cheaper, the efficient organization size moves downward and discernment becomes the bottleneck. Small, high-quality AI-native teams can outmove larger organizations by making judgment calls faster and with more trust, especially when supported by strong constraints, modular systems, and fast feedback loops, while larger companies carry coordination costs and structural debt.
  <!-- opinion-id: opinion-000006 -->
  <!-- sources: reader-note:01kksyamfzmzcwz3z8hkxva94r, rw:01km1e1p2hm2qjwf64kyw2w8p7, rw:01kncyjj4a1pevhzz8qjetjsxv, rw:01kncykeak7bn6wawhf1ykqfar, rw:01kkt3c037a7gghx7jfxk0bbv2, rw:01kyr4wxpwcwxtm17xa9ns118t -->

- AI does not need to beat an idealized version of knowledge work; in many companies it only has to beat messy, inconsistent operations where simply following instructions reliably is already above the current bar.
  <!-- opinion-id: opinion-000019 -->
  <!-- sources: rw:01kp4wgb37kpzj9jyq45a5nyk6 -->

- AI service replacement is most likely where customers already outsource repeatable execution or playbook-based work and judge the vendor by outcomes rather than visible effort.
  <!-- opinion-id: opinion-000030 -->
  <!-- sources: rw:01ks48kzxb83phc9391h8cf8rb, rw:01ks48m61rmne707ncmvybtzep, rw:01ks48n8bwnm9z99f78pykbdz0, rw:01ks48npm5g6axxxm14749q10z -->

- Enterprise AI deployment should start by mapping and documenting how work actually happens end to end, including exceptions; resolving conflicting judgment rules; translating tribal knowledge into explicit decision logic; and identifying workflows where agents offer enough value to justify deployment. Do not automate an ambiguous or dysfunctional process before doing this, because an agent will fill gaps with assumptions and scale the dysfunction. Evaluate deployed agents at the same intermediate checkpoints humans use.
  <!-- opinion-id: opinion-000034 -->
  <!-- sources: rw:01kskr0rbgy1rkw3y1gq9jw55g, rw:01kskdka8pn546x269sscxrjbs, rw:01kskdxwnen4fmrjggtkznerh8, rw:01m08gtqyp8b8127rkqsdcnaxc, rw:01m08gy822s9eydvhtxjda0dps, rw:01m08hakwrqq1zh08n63z7nzz2, reader-summary:01m1qw0m6nc1f1jqh79vbwsxhp -->

- Background agents can create far more enterprise value than prompted sidekicks because they remove recurring work rather than merely accelerate it: the cited workflows report roughly 60–90% efficiency gains versus 10–20%. They should run autonomously and bring humans in for exceptions and judgment, but only after the workflow—including exceptions—is documented; otherwise automation scales existing dysfunction.
  <!-- opinion-id: opinion-000072 -->
  <!-- sources: rw:01m08h1s3xwmyhk1yq6te0rdhj -->

- AI transformation should usually layer agents onto the systems employees already use rather than require wholesale replacement; rip-and-replace migrations delay value and force teams to relearn software they already depend on.
  <!-- opinion-id: opinion-000038 -->
  <!-- sources: rw:01kskr18czcpb0gsrgex1jn5qc -->

- The main bottleneck to automating complex white-collar work is increasingly scalable feedback data, not raw model intelligence. Even open-ended management can become a trainable domain if labs bootstrap agents with human decision traces and then use real-world company outcomes as rewards. Out-of-distribution failures are therefore often temporary gaps in the training pipeline rather than durable limits on what AI can do.
  <!-- opinion-id: opinion-000047 -->
  <!-- sources: rw:01kv6n0959jsvc4gytna23bkzx, rw:01kv6n5469phh7d7q9s6ez8wms, rw:01kv6n5k7sbgztdq3yt0ta0dkd -->

- AI can make an individual faster while making the organization slower when unedited output transfers verification, compression, and understanding to many downstream readers. Generated work is not finished until its author has checked it, cut it to what matters, and can defend every claim; otherwise local productivity is merely displaced cognitive cost.
  <!-- opinion-id: opinion-000049 -->
  <!-- sources: reader-summary:01kvehk4xt999exskypaf1a59y -->

## Moats And Strategy

- Local AI will not match frontier cloud AI for the hardest work, but it can still handle enough tasks to weaken cloud compute as a universal moat.
  <!-- opinion-id: opinion-000007 -->
  <!-- sources: rw:01kkt3a62sextfspc2qxdswkxf -->

- Agent products are differentiated by model-plus-harness integration, not model quality alone.
  <!-- opinion-id: opinion-000008 -->
  <!-- sources: rw:01kncyqbhj7d8t10emepgzgt1s -->

- As substantive product differences become easier to copy, brand and production-grade trust become stronger moats: prototypes can copy features, but not a record of reliability, audits, change control, and incident response.
  <!-- opinion-id: opinion-000009 -->
  <!-- sources: rw:01km6wb6fs62k46c08ymnb0aye, rw:01knfqmzt8f383ajbrs048naza -->

- Expertise is dispersing from experts' heads into skills, SOPs, context files, and open-source projects, and once captured it never comes back out; advantages based only on undocumented expert memory will erode as AI reuses what gets captured.
  <!-- opinion-id: opinion-000013 -->
  <!-- sources: rw:01kp1x7w709ae4n44b0z3g7h4w -->

- In agent products, durable advantage should come from company-specific domain reasoning and business logic; the common stack underneath should increasingly be platform primitives rather than bespoke plumbing.
  <!-- opinion-id: opinion-000022 -->
  <!-- sources: rw:01kps6pym55wbe9p3jhk8mpd4x -->

- AI commoditizes knowledge that can be specified or copied, while operational scar tissue compounds in coupled, changing systems because each real-world surprise changes both the system and how future surprises should be interpreted. This moat disappears when the underlying system is replaced.
  <!-- opinion-id: opinion-000029 -->
  <!-- sources: rw:01knfjsc5qjmyf0jd2k8yedkwm, rw:01knfjyjpmmeh1wpv1a4z2dy88, rw:01knfk2f4x3c2ne8vn10x52rgp, rw:01knfk4zd7ca5tq7kf760jht7a, reader-note:01kksy9drnnqysr6tb5e2n0pw3 -->

- AI-native service firms only become software-like when delivery gets easier, faster, and better with each client; the durable asset is vertical workflow knowledge, reusable agents, process data, and proof that the system compounds.
  <!-- opinion-id: opinion-000033 -->
  <!-- sources: rw:01ksk7bdz0gp2cdf3p1ctd280t, rw:01ksk7d2kahx9fp1brv5n7aqs1, rw:01ksk7dsefqbz5scnqznv9yyk9 -->

- Anything measurable can be trained against and is therefore on its way to commodity; durable AI application value shifts toward frontier work whose correctness depends on private data, trust, permission, and accountability. The moat is the continuing translation between model, workflow, and firm—built through deep integration, domain expertise, maintenance, and the authority to define and verify what good means.
  <!-- opinion-id: opinion-000045 -->
  <!-- sources: rw:01ktzm222bgxfw5cfbpdapyaet, rw:01kvpbkw1cdcwhbb15jakh3ae8, rw:01kvpbn4zp1z1vt0ea3rsh17ts, rw:01kvpbpwwcmq0zvx5f03qm5pp9, rw:01m2pdtgk1d25qshkes8bp7ywz -->

- A competitive frontier-model market preserves room for valuable application companies: customers want supplier choice, while labs generally gain more from broad model adoption than from killing any single downstream product. Model suppliers are therefore less likely to capture the whole application layer when several credible labs remain in contention.
  <!-- opinion-id: opinion-000051 -->
  <!-- sources: rw:01kvpbszpjknaq87ptkvgzjzdp -->

- As capable models become cheaper and more interchangeable, AI value will shift from benchmark leadership toward intelligence per dollar and the infrastructure that makes deployment reliable at scale. Durable rents should accrue to scarce orchestration, integration, governance, security, compliance, distribution, and enterprise trust rather than to model intelligence alone.
  <!-- opinion-id: opinion-000056 -->
  <!-- sources: reader-summary:01kwd7dyn5pxb7j2ydq53tcy24 -->

- An AI product should own the agent interface only when users already live in its system or specialized domain reasoning is the product. When value resides mainly in data or actions that complement a broader workflow, it should power the horizontal agent users already inhabit. Many products should do both: an embedded agent for core users and a headless interface for everyone else.
  <!-- opinion-id: opinion-000057 -->
  <!-- sources: reader-summary:01kwdzn0vfvbxpx25r0bwewy8c -->

- Distribution-market fit precedes product-market fit. Before expecting the market to love a product, founders must understand where customers spend attention, whom they trust, and how they discover products—and build a repeatable distribution engine around those realities.
  <!-- opinion-id: opinion-000050 -->
  <!-- sources: rw:01kvp4f50jt3eh3xmhgfr9sa3f -->

- As software creation becomes cheap and accessible, building a simple system is less likely to create durable value by itself. Differentiation increasingly comes from applying extreme focus to an important, ambitious problem rather than from the mere ability to ship software.
  <!-- opinion-id: opinion-000060 -->
  <!-- sources: rw:01kx8m8vnmn0ez2e8fb1xjwdj4 -->

- A vertical AI startup can defend itself against foundation-model labs by obsessing over a narrow set of real customer workflows. Continuously turning those workflows into benchmarks and product improvements creates a learning loop the labs are unlikely to match because the vertical is the startup's whole business, not the lab's main quest.
  <!-- opinion-id: opinion-000066 -->
  <!-- sources: rw:01kyr75e64axfk1p2h74gz78m9 -->

- Abundant model intelligence will not eliminate the application layer. Labs are pulled toward general-purpose, enormous markets, while customers pay for companies that integrate intelligence into specific institutions and turn tokens into accountable real-world outcomes. As capabilities mature, these companies should price against customer outcomes already forecast or targeted; early builders can own those economics. The durable opportunity is not defending scarce model access but making abundant intelligence economically useful.
  <!-- opinion-id: opinion-000075 -->
  <!-- sources: rw:01m0xg7d0hw0ec2dxfxmkbk755, rw:01m0xgy5g53n5gvk93exbt5cey -->

- Outcome-based pricing is strongest when a product can prove the work it performed and owns a credible definition of success. It aligns revenue with delivered value and turns demonstrated outcomes into both a unit-economic advantage and evidence of product defensibility.
  <!-- opinion-id: opinion-000081 -->
  <!-- sources: rw:01m2pewzy3adqprcem562c8j1q -->

## Feedback And Craft

- Ask for feedback when work is roughly 30% complete, not when it is nearly finished. Early framing invites debate about direction and what the product should be; late framing signals that only defects and polish remain open, when structural changes are most costly.
  <!-- opinion-id: opinion-000073 -->
  <!-- sources: rw:01m08ne2wnc4kgc2xcb3nk1d85 -->

## Taste, Craft, And Signal

- Taste matters more when implementation gets cheaper, because the constraint shifts from "can this be built?" to "is this coherent, polished, and worth caring about?"
  <!-- opinion-id: opinion-000010 -->
  <!-- sources: rw:01kkt3bjqsny5edfmcbeertgxn, rw:01km6d48j613hq0c9n141x2d8s, rw:01km6d525k20c4d0wd7cnbys5e, rw:01knczdnkbndmvcm7v6qfcxyhp -->

- When AI makes plausible output nearly costless, volume and customization stop signaling effort, care, or productivity; instead they create pressure to produce more simply to keep up.
  <!-- opinion-id: opinion-000011 -->
  <!-- sources: rw:01km1mjh61x3a121avgb35ybmf, rw:01km6c0q40mev12z6d96mr7wtc, reader-note:01kkwkjsegskdveypma6jtppxa -->

- The current AI slop era may be a golden age for human-AI work: models create useful slop at volume, humans are still needed to desloppify it, and that combination gives real leverage while keeping the work fun; if AI eventually displaces people or takes over the more interesting work, this moment may fade.
  <!-- opinion-id: opinion-000024 -->
  <!-- sources: rw:01kps7gne0fanp8tbn80gk6m75 -->

- In AI-assisted creative work, taste is not just knowing what you want but knowing what to reject: the default output is almost always generic, so have an opinion about the defaults — starting with the hook — and be willing to override them.
  <!-- opinion-id: opinion-000025 -->
  <!-- sources: rw:01kqx6150aqwx36jrn6m7w15mw, rw:01kqx62f1hr4jw9seen2t9k8xv -->

- When AI can cheaply generate repos, tests, and docs, real use becomes a stronger trust signal than polished artifacts; for serious software, prefer products with operational proof from yourself or comparable customers.
  <!-- opinion-id: opinion-000026 -->
  <!-- sources: rw:01kqza7w92hqnr2n1hratd69ja, rw:01kqzacv41vz7vwqtds7faevws -->

- Use agents to remove routine work that does not benefit from synchronous involvement, but stay deliberately in the loop where taste develops and original work needs you shaping it rather than just approving it.
  <!-- opinion-id: opinion-000041 -->
  <!-- sources: rw:01ktd4kw43j7714py2smmacmpt -->

- Taste is the ability to make consistently high-quality qualitative judgments when no objective metric can decide. Its value is not that the output cannot be copied—the output is often easy to imitate—but that good taste originates the choices everyone else wants to copy.
  <!-- opinion-id: opinion-000055 -->
  <!-- sources: rw:01kwawx9zm3s9wwzsh2htnkfme, rw:01kwawy67m3t1xcn3w939b28rr, rw:01kwawydzcs652tn0p9na08qbg -->

- Taste is not an objective hierarchy; it is the judgment required to understand a landscape of possibilities and choose what fits a particular vision and audience. Critical, commercial, and personal taste are different objectives, not ranks of legitimacy. Strong creative work therefore balances audience resonance with the creator's own preferences: over-index on either and the result becomes generic or relevant only to its maker.
  <!-- opinion-id: opinion-000077 -->
  <!-- sources: rw:01m1cvbrmr33v8mdtajn7e3fw9, rw:01m1cvcz4xe01thr197xw98wtd, rw:01m1cvgah4ksf0qzmr22b7cgk8, rw:01m1cvggys65sg2qntzdxaqgyw, rw:01m1cvt2xyja89z2jfb72xq0y6 -->

- As AI makes products easier to imitate and more superficially similar, specialized product taste becomes more defensible. Taste comes from deep understanding of a particular user's work and compounds across many small choices in the UX, model, defaults, and interaction; individual pieces can be copied more easily than the coherent whole.
  <!-- opinion-id: opinion-000082 -->
  <!-- sources: rw:01m2pf1kx0qpasppz34wvdcsbw, rw:01m2pf22jky6mpchx8batnzbay -->

## Career And Work

- A corporate job does not need to be personally meaningful if it is useful: building skills, funding independent projects, or buying time for higher-conviction work.
  <!-- opinion-id: opinion-000012 -->
  <!-- sources: rw:01knfjhr4hnp2exvcgpggvywsd -->

- Career growth is not something to wait for: managers can help, but ambitious people need to proactively tell their manager what they want, ask what must be true to reach the next level, and seek scope instead of assuming good work will be noticed.
  <!-- opinion-id: opinion-000015 -->
  <!-- sources: rw:01kp1xj8s4sdw2nswebpn7pher -->

- In hiring, an impressive accomplishment only creates signal if the candidate can deliver it well; a truthful, practiced account of tradeoffs and close calls reveals more than a polished success story that hides how they actually think.
  <!-- opinion-id: opinion-000016 -->
  <!-- sources: rw:01kp1wkxxh3a81jf620rm5kzns, rw:01kp1wnk6d4ckysfzsj34sfpfk, rw:01kp1wrn0b3b2ray7wa6yhf08e -->

- People do not need work specifically; they need four things work happens to provide — agency, contribution, mastery, and connection — so if AI displaces work, whatever comes after has to supply those four functions, not just income.
  <!-- opinion-id: opinion-000020 -->
  <!-- sources: rw:01kp4ymck943np90xtvj52v2fh -->

- Engineering interviews in an AI-native world should test how candidates scope, build, review, and reason with AI tools on representative product work instead of testing code mechanics without assistance.
  <!-- opinion-id: opinion-000023 -->
  <!-- sources: reader-summary:01kpxgvdm8h04w0k41wv4nrjgb -->

- Passive productivity like reading and podcasts is helpful, but it has diminishing returns; active productivity scales better because its returns compound the more time you spend creating.
  <!-- opinion-id: opinion-000027 -->
  <!-- sources: rw:01kr1c8j4a6aph5qyrbswghyyg -->

- The frontier of a field is partly tacit because its newest information has not yet been written down. Genuine conversations with active practitioners can therefore teach more than consuming published commentary while also creating the relationships through which future opportunities emerge.
  <!-- opinion-id: opinion-000058 -->
  <!-- sources: rw:01kwqmk418pzfvhs5wajx45n44 -->

- Career leverage is not about being well-rounded; Price's Law suggests that a small square-root-sized minority produces much of the output, so the goal is to find and compound your √n multiplier skills into a rare combination.
  <!-- opinion-id: opinion-000031 -->
  <!-- sources: rw:01ks4a57xnehk7pvt344an40r0, rw:01ks4a6rrzwhhxew6vxs7d1h4k -->

- AI will not eliminate generalist software engineers, but it is collapsing the premium on implementation-heavy work while increasing the value of deep expertise and systems intuition. The strongest returns will come from mastering a hard production domain—such as reliability, security, performance, observability, or scale—where judgment about real operational tradeoffs remains scarce.
  <!-- opinion-id: opinion-000053 -->
  <!-- sources: rw:01kwagqq4fmgg5ymmgwav25g79 -->

- Engineering value comes from solving customer problems and managing contextual tradeoffs, not producing code. AI can expand implementation capacity, but it cannot independently resolve decisions that depend on product, organizational, and customer context beyond the codebase. Junior engineers therefore still add capacity: they own a smaller scope of complexity than senior engineers, but perform the same essential role.
  <!-- opinion-id: opinion-000076 -->
  <!-- sources: rw:01m12fv9sjgb82581ecezsa1n3, rw:01m12fvtqvfnqy218w7e4gr5n0 -->

- Career choices should be judged by the scarce, compounding assets they build—skills, reputation, trusted relationships, sustained collaboration, options, and operational scars—not just immediate pay, title, brand, or funding. Capital is increasingly accessible, but committed human time, attention, and trust remain durable constraints and sources of leverage.
  <!-- opinion-id: opinion-000036 -->
  <!-- sources: rw:01ksv22qgqjrmckm733rhy3br4, rw:01ksv259vfm1xwns6ksyfcb3z0, rw:01ksvjrngk7z25y7ygtv1cd6rv, rw:01kx8kxfmxjf7sq3px8h9s2fyj -->

- High agency needs recovery and self-context, not endless escalation; because there is no final level, ambitious people should deliberately look back, accept their current state, and take breaks.
  <!-- opinion-id: opinion-000037 -->
  <!-- sources: rw:01ksjznkpkmd1p430mjrnt1dfa, rw:01kskp6r68fqp6eewx9v87pt8f, rw:01kskp7frjqgykp69s4ja2g51q -->

- Rejection tolerance is a trainable component of agency. Especially early in a career, deliberately pursuing opportunities likely to say no helps decouple rejection from surprise and dejection, making ambition less constrained by fear of the outcome.
  <!-- opinion-id: opinion-000061 -->
  <!-- sources: rw:01kx9zx45d7vwgw0cc30m1hqz7 -->

## Meaning And Community

- A meaningful, vivid life requires deliberately creating things with other people—not merely consuming together or creating alone. Because shared creation requires planning, initiation, and social risk, it is chronically undersupplied; avoiding that discomfort can quietly produce years of thin experience.
  <!-- opinion-id: opinion-000059 -->
  <!-- sources: rw:01kx6fahxkrjq2yf7fj3jb5vkr, rw:01kx6favrrxs50y59g5cnhdy6k -->
