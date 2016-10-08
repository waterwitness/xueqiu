.class final Lcom/xueqiu/android/common/ShareActivity$2;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/ShareActivity;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/ShareActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/ShareActivity;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/xueqiu/android/common/ShareActivity$2;->a:Lcom/xueqiu/android/common/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/xueqiu/android/common/ShareActivity$2;->a:Lcom/xueqiu/android/common/ShareActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/ShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "action_share"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 229
    return-void
.end method
