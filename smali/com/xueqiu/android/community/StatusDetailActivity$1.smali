.class final Lcom/xueqiu/android/community/StatusDetailActivity$1;
.super Ljava/lang/Object;
.source "StatusDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/StatusDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/StatusDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/StatusDetailActivity;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$1;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 233
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$1;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    const-class v2, Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 235
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$1;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 236
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$1;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->finish()V

    .line 238
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$1;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "statusDetail_home"

    .line 1088
    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 239
    return-void
.end method
