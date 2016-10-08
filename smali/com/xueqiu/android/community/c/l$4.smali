.class final Lcom/xueqiu/android/community/c/l$4;
.super Ljava/lang/Object;
.source "PaidContainerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/c/l;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/l;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/l;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/xueqiu/android/community/c/l$4;->a:Lcom/xueqiu/android/community/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 157
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pay_ask_first_in"

    invoke-static {v0, v1, v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 158
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/l$4;->a:Lcom/xueqiu/android/community/c/l;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/c/l;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/common/GuideTutorialActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    const-string v1, "extra_which_view"

    sget-object v2, Lcom/xueqiu/android/common/model/GuideTutorialType;->PAY_ASK_FIRST_IN:Lcom/xueqiu/android/common/model/GuideTutorialType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 160
    const-string v1, "extra_view_click_position"

    new-array v2, v3, [I

    const/4 v3, 0x0

    const v4, 0x7f0e0253

    aput v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 161
    iget-object v1, p0, Lcom/xueqiu/android/community/c/l$4;->a:Lcom/xueqiu/android/community/c/l;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/c/l;->a(Landroid/content/Intent;)V

    .line 162
    iget-object v0, p0, Lcom/xueqiu/android/community/c/l$4;->a:Lcom/xueqiu/android/community/c/l;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/c/l;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const v1, 0x7f040007

    const v2, 0x7f040008

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/k;->overridePendingTransition(II)V

    .line 163
    return-void
.end method
