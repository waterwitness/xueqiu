.class final Landroid/support/v4/content/u$2;
.super Landroid/support/v4/content/y;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/content/u;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/y",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/content/u;


# direct methods
.method constructor <init>(Landroid/support/v4/content/u;)V
    .locals 1

    .prologue
    .line 123
    iput-object p1, p0, Landroid/support/v4/content/u$2;->a:Landroid/support/v4/content/u;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/content/y;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Landroid/support/v4/content/u$2;->a:Landroid/support/v4/content/u;

    invoke-static {v0}, Landroid/support/v4/content/u;->a(Landroid/support/v4/content/u;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 127
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 128
    iget-object v0, p0, Landroid/support/v4/content/u$2;->a:Landroid/support/v4/content/u;

    iget-object v1, p0, Landroid/support/v4/content/u$2;->a:Landroid/support/v4/content/u;

    invoke-virtual {v1}, Landroid/support/v4/content/u;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/content/u;->a(Landroid/support/v4/content/u;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
