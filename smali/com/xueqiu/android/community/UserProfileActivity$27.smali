.class final Lcom/xueqiu/android/community/UserProfileActivity$27;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/UserProfileActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UserProfileActivity;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/xueqiu/android/community/UserProfileActivity$27;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 296
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity$27;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    const-class v2, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    const-string v1, "extra_user"

    iget-object v2, p0, Lcom/xueqiu/android/community/UserProfileActivity$27;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/UserProfileActivity;->d(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 298
    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity$27;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 299
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$27;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    const v1, 0x7f040010

    const v2, 0x7f040008

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/community/UserProfileActivity;->overridePendingTransition(II)V

    .line 300
    return-void
.end method
