.class final Lcom/xueqiu/android/community/UpdateUserInfoActivity$11;
.super Lrx/i;
.source "UpdateUserInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/UpdateUserInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<",
        "Lcom/xueqiu/android/common/model/FileUploadResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)V
    .locals 0

    .prologue
    .line 804
    iput-object p1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$11;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 808
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 804
    check-cast p1, Lcom/xueqiu/android/common/model/FileUploadResult;

    .line 1818
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$11;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->c(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 1819
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/FileUploadResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/FileUploadResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1820
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$11;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/FileUploadResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->g(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1821
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$11;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/FileUploadResult;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->h(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1822
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$11;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$11;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->u(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->i(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Ljava/lang/String;)V

    .line 804
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$11;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->c(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 813
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 814
    return-void
.end method
