.class final Lcom/pingan/a/c$1;
.super Ljava/lang/Thread;
.source "CrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pingan/a/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/pingan/a/c;


# direct methods
.method constructor <init>(Lcom/pingan/a/c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pingan/a/c$1;->a:Lcom/pingan/a/c;

    .line 123
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 126
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 127
    iget-object v0, p0, Lcom/pingan/a/c$1;->a:Lcom/pingan/a/c;

    invoke-static {v0}, Lcom/pingan/a/c;->a(Lcom/pingan/a/c;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5f88\u62b1\u6b49,\u7a0b\u5e8f\u51fa\u73b0\u5f02\u5e38,\u5373\u5c06\u9000\u51fa."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 128
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 129
    return-void
.end method
