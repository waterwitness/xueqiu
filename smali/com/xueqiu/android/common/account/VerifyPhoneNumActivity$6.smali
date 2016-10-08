.class final Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$6;
.super Lcom/xueqiu/android/base/b/p;
.source "VerifyPhoneNumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$6;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$6;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->i()V

    .line 525
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 526
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 521
    check-cast p1, Lcom/xueqiu/android/common/model/LoginResult;

    .line 1530
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$6;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->i()V

    .line 1531
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$6;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->a(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Lcom/xueqiu/android/common/model/LoginResult;)V

    .line 521
    return-void
.end method
