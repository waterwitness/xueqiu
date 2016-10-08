.class final Lcom/xueqiu/android/common/e$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseFragmentSupportNotice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/e;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/e;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/xueqiu/android/common/e$1;->a:Lcom/xueqiu/android/common/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 27
    if-nez p2, :cond_0

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    const-string v0, "extra_page_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/xueqiu/android/common/e$1;->a:Lcom/xueqiu/android/common/e;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/e;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
