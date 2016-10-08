.class final Lcom/xueqiu/android/trade/c$7;
.super Ljava/lang/Object;
.source "RefreshTradeTokenHandler.java"

# interfaces
.implements Lcom/xueqiu/android/trade/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c;->a(Lcom/xueqiu/android/trade/model/TradeAccount;ZLjava/util/ArrayList;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/xueqiu/android/trade/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/xueqiu/android/trade/c$7;->b:Lcom/xueqiu/android/trade/c;

    iput-object p2, p0, Lcom/xueqiu/android/trade/c$7;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/xueqiu/android/trade/c$7;->b:Lcom/xueqiu/android/trade/c;

    .line 3049
    iget-object v0, v0, Lcom/xueqiu/android/trade/c;->c:Lcom/xueqiu/android/trade/d;

    .line 164
    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/xueqiu/android/trade/c$7;->b:Lcom/xueqiu/android/trade/c;

    .line 4049
    iget-object v0, v0, Lcom/xueqiu/android/trade/c;->c:Lcom/xueqiu/android/trade/d;

    .line 165
    invoke-interface {v0}, Lcom/xueqiu/android/trade/d;->a()V

    .line 167
    :cond_0
    return-void
.end method

.method public final a(Lcom/xueqiu/android/trade/model/TradeAccount;ZLcom/xueqiu/android/base/a/a;Z)V
    .locals 8

    .prologue
    .line 159
    iget-object v1, p0, Lcom/xueqiu/android/trade/c$7;->b:Lcom/xueqiu/android/trade/c;

    iget-object v5, p0, Lcom/xueqiu/android/trade/c$7;->a:Ljava/util/ArrayList;

    .line 1188
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v0, v1, Lcom/xueqiu/android/trade/c;->a:Lcom/xueqiu/android/common/b;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v7, "\u91cd\u8bd5"

    new-instance v0, Lcom/xueqiu/android/trade/c$9;

    move-object v2, p3

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/trade/c$9;-><init>(Lcom/xueqiu/android/trade/c;Lcom/xueqiu/android/base/a/a;Lcom/xueqiu/android/trade/model/TradeAccount;ZLjava/util/ArrayList;)V

    .line 1189
    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1203
    if-eqz p4, :cond_0

    .line 1204
    const-string v2, "\u5fd8\u8bb0\u5bc6\u7801"

    new-instance v3, Lcom/xueqiu/android/trade/c$10;

    invoke-direct {v3, v1}, Lcom/xueqiu/android/trade/c$10;-><init>(Lcom/xueqiu/android/trade/c;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1221
    const v1, 0x7f0704d0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1233
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1234
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 160
    return-void

    .line 1223
    :cond_0
    const v2, 0x7f070070

    new-instance v3, Lcom/xueqiu/android/trade/c$11;

    invoke-direct {v3, v1}, Lcom/xueqiu/android/trade/c$11;-><init>(Lcom/xueqiu/android/trade/c;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2072
    iget-object v1, p3, Lcom/xueqiu/android/base/a/a;->errorDescription:Ljava/lang/String;

    .line 1231
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/xueqiu/android/trade/c$7;->b:Lcom/xueqiu/android/trade/c;

    .line 5049
    iget-object v0, v0, Lcom/xueqiu/android/trade/c;->c:Lcom/xueqiu/android/trade/d;

    .line 171
    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/xueqiu/android/trade/c$7;->b:Lcom/xueqiu/android/trade/c;

    .line 6049
    iget-object v0, v0, Lcom/xueqiu/android/trade/c;->c:Lcom/xueqiu/android/trade/d;

    .line 172
    invoke-interface {v0}, Lcom/xueqiu/android/trade/d;->b()V

    .line 174
    :cond_0
    return-void
.end method
