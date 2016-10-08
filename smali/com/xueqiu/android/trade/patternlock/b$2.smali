.class final Lcom/xueqiu/android/trade/patternlock/b$2;
.super Ljava/lang/Object;
.source "ConfirmPatternFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/patternlock/b;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/patternlock/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/patternlock/b;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/xueqiu/android/trade/patternlock/b$2;->a:Lcom/xueqiu/android/trade/patternlock/b;

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

    .line 155
    invoke-virtual {v0}, Lcom/xueqiu/android/base/t;->logout()V

    .line 157
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 158
    const-string v1, "extra_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 159
    const-string v1, "extra_need_back"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/trade/patternlock/b$2;->a:Lcom/xueqiu/android/trade/patternlock/b;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/patternlock/b;->g()Landroid/support/v4/a/k;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 162
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/b$2;->a:Lcom/xueqiu/android/trade/patternlock/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/patternlock/b;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/a/k;->startActivity(Landroid/content/Intent;)V

    .line 163
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/b$2;->a:Lcom/xueqiu/android/trade/patternlock/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/patternlock/b;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->finish()V

    .line 164
    return-void
.end method
