.class final Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13$1;
.super Ljava/lang/Object;
.source "RegisterCompleteUserInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13;->onSuccess(Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13$1;->b:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13;

    iput-object p2, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 540
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13$1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/tauth/bean/UserInfo;

    .line 541
    iget-object v1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13$1;->b:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13;

    iget-object v1, v1, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13;->a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;

    invoke-virtual {v0}, Lcom/tencent/tauth/bean/UserInfo;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->a(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 542
    iget-object v1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13$1;->b:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13;

    iget-object v1, v1, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13;->a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;

    invoke-virtual {v0}, Lcom/tencent/tauth/bean/UserInfo;->getIcon_100()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->b(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 543
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13$1;->b:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13;->a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->i(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;)V

    .line 544
    return-void
.end method
