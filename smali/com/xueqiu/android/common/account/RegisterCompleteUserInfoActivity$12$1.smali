.class final Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$12$1;
.super Ljava/lang/Object;
.source "RegisterCompleteUserInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$12;->onComplete(Lorg/json/JSONObject;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$12;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$12;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$12$1;->a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$12$1;->a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$12;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$12;->a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->i(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;)V

    .line 488
    return-void
.end method
