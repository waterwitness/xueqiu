.class final Lcom/xueqiu/android/trade/ConfirmPatternActivity$2;
.super Ljava/lang/Object;
.source "ConfirmPatternActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/ConfirmPatternActivity;->logout()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/ConfirmPatternActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/ConfirmPatternActivity;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/xueqiu/android/trade/ConfirmPatternActivity$2;->a:Lcom/xueqiu/android/trade/ConfirmPatternActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/xueqiu/android/base/t;->logout()V

    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    const-string v1, "extra_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 82
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/trade/ConfirmPatternActivity$2;->a:Lcom/xueqiu/android/trade/ConfirmPatternActivity;

    const-class v3, Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 84
    iget-object v0, p0, Lcom/xueqiu/android/trade/ConfirmPatternActivity$2;->a:Lcom/xueqiu/android/trade/ConfirmPatternActivity;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/ConfirmPatternActivity;->startActivity(Landroid/content/Intent;)V

    .line 85
    iget-object v0, p0, Lcom/xueqiu/android/trade/ConfirmPatternActivity$2;->a:Lcom/xueqiu/android/trade/ConfirmPatternActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/ConfirmPatternActivity;->finish()V

    .line 86
    return-void
.end method
