.class final Lcom/xueqiu/android/common/m$13;
.super Ljava/lang/Object;
.source "MyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/m;->C()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/m;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/m;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/xueqiu/android/common/m$13;->a:Lcom/xueqiu/android/common/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 365
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/common/m$13;->a:Lcom/xueqiu/android/common/m;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/m;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/SimpleStatusListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 366
    const-string v1, "extra_status_source"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 367
    iget-object v1, p0, Lcom/xueqiu/android/common/m$13;->a:Lcom/xueqiu/android/common/m;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/m;->a(Landroid/content/Intent;)V

    .line 368
    iget-object v0, p0, Lcom/xueqiu/android/common/m$13;->a:Lcom/xueqiu/android/common/m;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/m;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "my_status"

    .line 1088
    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 369
    return-void
.end method
