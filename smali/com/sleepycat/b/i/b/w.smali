.class public final Lcom/sleepycat/b/i/b/w;
.super Ljava/lang/Object;
.source "ProposerStatDefinition.java"


# static fields
.field public static a:Lcom/sleepycat/b/p/ag;

.field public static b:Lcom/sleepycat/b/p/ag;

.field public static c:Lcom/sleepycat/b/p/ag;

.field public static d:Lcom/sleepycat/b/p/ag;

.field public static e:Lcom/sleepycat/b/p/ag;

.field public static f:Lcom/sleepycat/b/p/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "phase1NoQuorum"

    const-string v2, "Number of times Phase 1 ended with insufficient votes for a quorum."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/b/w;->a:Lcom/sleepycat/b/p/ag;

    .line 27
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "phase1NoNonZeroPrio"

    const-string v2, "Number of times Phase 1 ended due to the absence of participating electable nodes with non-zero priority"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/b/w;->b:Lcom/sleepycat/b/p/ag;

    .line 33
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "phase1HigherProposal"

    const-string v2, "Number of times Phase 1 was terminated because one of the Acceptor agents already had a higher numbered proposal."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/b/w;->c:Lcom/sleepycat/b/p/ag;

    .line 39
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "phase2NoQuorum"

    const-string v2, "Number of times Phase 2 ended with insufficient votes for a quorum."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/b/w;->d:Lcom/sleepycat/b/p/ag;

    .line 45
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "phase2HigherProposal"

    const-string v2, "Number of times Phase 2 was terminated because one of the Acceptor agents already had a higher numbered proposal."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/b/w;->e:Lcom/sleepycat/b/p/ag;

    .line 51
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "promiseCount"

    const-string v2, "Number of promises made by Acceptors in phase 1."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/b/w;->f:Lcom/sleepycat/b/p/ag;

    return-void
.end method
