.class final Lcom/xueqiu/android/common/setting/SettingActivity$16;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/setting/SettingActivity;->canCommentMe(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/setting/SettingActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/xueqiu/android/common/setting/SettingActivity$16;->a:Lcom/xueqiu/android/common/setting/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 532
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity$16;->a:Lcom/xueqiu/android/common/setting/SettingActivity;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1559
    invoke-virtual {v0}, Lcom/xueqiu/android/common/setting/SettingActivity;->h()Landroid/app/Dialog;

    .line 1560
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lcom/xueqiu/android/common/setting/SettingActivity$18;

    invoke-direct {v4, v0, v1}, Lcom/xueqiu/android/common/setting/SettingActivity$18;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity;Ljava/lang/String;)V

    .line 2127
    iget-object v0, v2, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, v3, v4}, Lcom/xueqiu/android/base/b/an;->d(ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 533
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 534
    return-void
.end method
