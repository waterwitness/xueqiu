.class final Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13$2;
.super Ljava/lang/Object;
.source "RegisterCompleteUserInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13;->onFail(ILjava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13$2;->b:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13;

    iput-object p2, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13$2;->b:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13;->a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->i()V

    .line 554
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13$2;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13$2;->b:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13;

    iget-object v1, v1, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13;->a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tauth/http/TDebug;->msg(Ljava/lang/String;Landroid/content/Context;)V

    .line 555
    return-void
.end method
