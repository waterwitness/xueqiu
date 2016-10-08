.class final Lcom/xueqiu/android/community/UserProfileActivity$24;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/UserProfileActivity;->b(Ljava/util/ArrayList;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UserProfileActivity;)V
    .locals 0

    .prologue
    .line 913
    iput-object p1, p0, Lcom/xueqiu/android/community/UserProfileActivity$24;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 916
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity$24;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    const-class v2, Lcom/xueqiu/android/community/UserHotStatusActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 917
    const-string v1, "extra_user"

    iget-object v2, p0, Lcom/xueqiu/android/community/UserProfileActivity$24;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/UserProfileActivity;->d(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 918
    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity$24;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 919
    return-void
.end method
