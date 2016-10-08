.class final Lcom/xueqiu/android/community/UserProfileActivity$8;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/UserProfileActivity;->a(Lcom/xueqiu/android/community/model/User;Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UserProfileActivity;)V
    .locals 0

    .prologue
    .line 560
    iput-object p1, p0, Lcom/xueqiu/android/community/UserProfileActivity$8;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 1186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 563
    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$8;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    .line 2152
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/t;->a(Landroid/app/Activity;Z)V

    .line 568
    :goto_0
    return-void

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$8;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserProfileActivity;->d(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity$8;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserProfileActivity;->i(Lcom/xueqiu/android/community/UserProfileActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/l;->a(Lcom/xueqiu/android/community/model/User;Landroid/content/Context;)V

    goto :goto_0
.end method
