.class final Lcom/xueqiu/android/common/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/MainActivity;
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xueqiu/android/common/MainActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/MainActivity;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/xueqiu/android/common/MainActivity$9;->c:Lcom/xueqiu/android/common/MainActivity;

    iput-boolean p2, p0, Lcom/xueqiu/android/common/MainActivity$9;->a:Z

    iput-object p3, p0, Lcom/xueqiu/android/common/MainActivity$9;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/xueqiu/android/common/MainActivity$9;->a:Z

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity$9;->c:Lcom/xueqiu/android/common/MainActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/MainActivity;->c(Lcom/xueqiu/android/common/MainActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    const-string v1, "extra_phone_number"

    iget-object v2, p0, Lcom/xueqiu/android/common/MainActivity$9;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity$9;->c:Lcom/xueqiu/android/common/MainActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/MainActivity;->c(Lcom/xueqiu/android/common/MainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 203
    :goto_0
    return-void

    .line 199
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity$9;->c:Lcom/xueqiu/android/common/MainActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/MainActivity;->c(Lcom/xueqiu/android/common/MainActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    const-string v1, "extra_verify_phone_intent"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity$9;->c:Lcom/xueqiu/android/common/MainActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/MainActivity;->c(Lcom/xueqiu/android/common/MainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
