.class final Lcom/xueqiu/android/trade/SetPatternActivity$2;
.super Ljava/lang/Object;
.source "SetPatternActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/SetPatternActivity;->logout()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/SetPatternActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/SetPatternActivity;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/xueqiu/android/trade/SetPatternActivity$2;->a:Lcom/xueqiu/android/trade/SetPatternActivity;

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

    .line 91
    invoke-virtual {v0}, Lcom/xueqiu/android/base/t;->logout()V

    .line 93
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 94
    const-string v1, "extra_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 95
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/trade/SetPatternActivity$2;->a:Lcom/xueqiu/android/trade/SetPatternActivity;

    const-class v3, Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 97
    iget-object v0, p0, Lcom/xueqiu/android/trade/SetPatternActivity$2;->a:Lcom/xueqiu/android/trade/SetPatternActivity;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/SetPatternActivity;->startActivity(Landroid/content/Intent;)V

    .line 98
    iget-object v0, p0, Lcom/xueqiu/android/trade/SetPatternActivity$2;->a:Lcom/xueqiu/android/trade/SetPatternActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/SetPatternActivity;->finish()V

    .line 99
    return-void
.end method
