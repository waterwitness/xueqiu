.class Lcom/flurry/sdk/kf$1$1;
.super Lcom/flurry/sdk/ly;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/kf$1;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/lz;

.field final synthetic b:Lcom/flurry/sdk/kf$1;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/kf$1;Lcom/flurry/sdk/lz;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/flurry/sdk/kf$1$1;->b:Lcom/flurry/sdk/kf$1;

    iput-object p2, p0, Lcom/flurry/sdk/kf$1$1;->a:Lcom/flurry/sdk/lz;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/flurry/sdk/kf$1$1;->a:Lcom/flurry/sdk/lz;

    invoke-virtual {v0}, Lcom/flurry/sdk/lz;->o()V

    .line 65
    return-void
.end method
