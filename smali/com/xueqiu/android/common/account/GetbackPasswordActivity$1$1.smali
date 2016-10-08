.class final Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$1;
.super Lcom/xueqiu/android/base/b/p;
.source "GetbackPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/SNBJSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$1;->a:Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$1;->a:Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;->a:Lcom/xueqiu/android/common/account/GetbackPasswordActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/GetbackPasswordActivity;->i()V

    .line 53
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 54
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 49
    check-cast p1, Lcom/xueqiu/android/common/model/SNBJSONObject;

    .line 1058
    iget-object v0, p0, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$1;->a:Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;->a:Lcom/xueqiu/android/common/account/GetbackPasswordActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/GetbackPasswordActivity;->i()V

    .line 1059
    const/4 v1, 0x0

    .line 1061
    :try_start_0
    const-string v0, "success"

    invoke-virtual {p1, v0}, Lcom/xueqiu/android/common/model/SNBJSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1066
    :goto_0
    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$1;->a:Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;->a:Lcom/xueqiu/android/common/account/GetbackPasswordActivity;

    const v1, 0x7f070427

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/account/GetbackPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1071
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$1;->a:Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;

    iget-object v2, v2, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;->a:Lcom/xueqiu/android/common/account/GetbackPasswordActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$1;->a:Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;

    iget-object v2, v2, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;->a:Lcom/xueqiu/android/common/account/GetbackPasswordActivity;

    const v3, 0x7f070409

    .line 1072
    invoke-virtual {v2, v3}, Lcom/xueqiu/android/common/account/GetbackPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$1;->a:Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;

    iget-object v2, v2, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;->a:Lcom/xueqiu/android/common/account/GetbackPasswordActivity;

    const v3, 0x7f0700b1

    .line 1073
    invoke-virtual {v2, v3}, Lcom/xueqiu/android/common/account/GetbackPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$1$1;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$1$1;-><init>(Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1080
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 49
    return-void

    .line 1063
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    .line 1069
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$1;->a:Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;->a:Lcom/xueqiu/android/common/account/GetbackPasswordActivity;

    const v1, 0x7f0702fa

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/account/GetbackPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
