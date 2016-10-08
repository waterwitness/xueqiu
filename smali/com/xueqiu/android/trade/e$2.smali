.class final Lcom/xueqiu/android/trade/e$2;
.super Lcom/xueqiu/android/base/b/p;
.source "TokenExpiresTimeSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/e;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xueqiu/android/trade/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/e;I)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/xueqiu/android/trade/e$2;->b:Lcom/xueqiu/android/trade/e;

    iput p2, p0, Lcom/xueqiu/android/trade/e$2;->a:I

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/trade/e$2;->b:Lcom/xueqiu/android/trade/e;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/e;->c()V

    .line 106
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 107
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 102
    .line 1111
    iget-object v0, p0, Lcom/xueqiu/android/trade/e$2;->b:Lcom/xueqiu/android/trade/e;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/e;->c()V

    .line 1112
    iget-object v0, p0, Lcom/xueqiu/android/trade/e$2;->b:Lcom/xueqiu/android/trade/e;

    .line 2028
    iget-object v0, v0, Lcom/xueqiu/android/trade/e;->c:Lcom/xueqiu/android/trade/f;

    .line 1112
    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/xueqiu/android/trade/e$2;->b:Lcom/xueqiu/android/trade/e;

    .line 3028
    iget-object v0, v0, Lcom/xueqiu/android/trade/e;->c:Lcom/xueqiu/android/trade/f;

    .line 1113
    iget v1, p0, Lcom/xueqiu/android/trade/e$2;->a:I

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/f;->a(I)V

    .line 1115
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/e$2;->b:Lcom/xueqiu/android/trade/e;

    .line 4028
    iget-object v0, v0, Lcom/xueqiu/android/trade/e;->a:Landroid/app/Activity;

    .line 1115
    const-string v1, "trade_write_token_expires"

    iget v2, p0, Lcom/xueqiu/android/trade/e$2;->a:I

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1116
    iget-object v0, p0, Lcom/xueqiu/android/trade/e$2;->b:Lcom/xueqiu/android/trade/e;

    .line 5028
    iget-object v0, v0, Lcom/xueqiu/android/trade/e;->d:Landroid/app/Dialog;

    .line 1116
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 102
    return-void
.end method
