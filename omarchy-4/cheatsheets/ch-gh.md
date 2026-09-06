Authentication & Setup
gh auth login          # Authenticate with GitHub
gh auth status         # View current authentication status

Repositories
gh repo clone <repo>   # Clone a GitHub repo (supports owner/repo format)
gh repo create         # Create a new repository interactively
gh repo view --web     # Open the current repository in your browser
gh repo fork --clone   # Fork and clone a repository locally

Pull Requests (pr)
gh pr create --fill    # Create a PR using commit info for title & body
gh pr create --web     # Open the web interface to create a PR
gh pr list             # List open PRs for the current repository
gh pr checkout <num>   # Check out a pull request branch locally
gh pr diff             # View changes in the current branch's PR
gh pr review --approve # Approve the current PR
gh pr merge --squash   # Merge the current PR (options: --merge, --rebase, --squash)
gh pr view --web       # Open current PR in the browser

Issues (issue)
gh issue list          # List open issues
gh issue create        # Create a new issue interactively
gh issue view <num>    # View details of a specific issue
gh issue close <num>   # Close an issue

GitHub Actions / Runs (run)
gh run list            # List recent workflow runs
gh run view --log      # View logs of the latest run
gh run watch           # Watch an active workflow run in real-time

Releases (release)
gh release list        # List releases
gh release create <tag> # Create a new release interactively
