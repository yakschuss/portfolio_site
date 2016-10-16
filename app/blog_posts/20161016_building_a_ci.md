#Building a CI

So, as you may know, I've been struggling to push forward in my development
journey. Lately - every project I've started has fallen off, in a sad attempt to
kickstart a journey into intermediate-dev-world. No dice.

Any way, I was told by a friend that I wasn't going to get better by doing the
same CRUD app 100 times, and that sounded kinda right.

He suggested I pick something slightly harder, and we would pair on it to kick
me off, (as well as let me see how someone more experienced thinks about these
processes.)

Anyway, I wanted to learn more about continuous integration, how it works, and
what was under the hood.

So we started to build "Jack-CI". (A bit narcissistic, I know.)

I was off to the races! "We need to do this, and that, and maybe think about
this issue, and prep for that, and see if that would work with that!" (Not very
descriptive, but hey)

The immediate gut-check was, "Whoa! Slow down dude, what's the very _first_
thing that needs to happen for _anything_ to happen?"

Me: "Uh...I guess... someone needs to opt-in to a CI?"

"Yep, so let's set it up. 

So we set it up.

I found out about Github's Repo Settings, the WebHooks, the PullRequest API, and
how you can send a request to a specific URI for every pull request.

In the process, I also learned about ngrok, which opens up a port on your local
machine so that outside machines can connect via the internet. (Doesn't sound
very safe, but I'm leaving it for now.)

So we set up the repo to send requests to my server every time a pull request
was made, verified it was hitting my server, and then went on to figure out the
next step.

Now, I won't hash out every single thing we went over, (we paired for 4 and
a half hours(!)), but needless to say, I think I learned a ton in this session
that I hadn't realized before.

We discussed mocking, system commands, commit messages, a brutal commitment to
TDD,  and most importantly for
me, development process. 

In my mind, what makes me a junior at this point in my development journey is
not my ability to understand code, learn something new, or even write a solution
to a pre-defined problem.

It feels as though my main struggle now is around how to systematically make
decisions moving forward and spur on a development process.

As was said: "In my mind, the difference between an intermediate developer and
senior developers, besides for speed, is making the _right_ development
decisions".

What kind of development decisions have become second nature to you?
How have you practiced breaking down your development process?

I'd love to hear from you.

