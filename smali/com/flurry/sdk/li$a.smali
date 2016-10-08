.class Lcom/flurry/sdk/li$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/flurry/sdk/li;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/li;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/flurry/sdk/li$a;->a:Lcom/flurry/sdk/li;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/flurry/sdk/li$a;->a:Lcom/flurry/sdk/li;

    invoke-virtual {v0}, Lcom/flurry/sdk/li;->a()V

    .line 22
    new-instance v0, Lcom/flurry/sdk/lj;

    invoke-direct {v0}, Lcom/flurry/sdk/lj;-><init>()V

    .line 23
    invoke-virtual {v0}, Lcom/flurry/sdk/lj;->b()V

    .line 24
    return-void
.end method
