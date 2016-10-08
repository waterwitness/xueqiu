.class final Lcom/xueqiu/android/stock/c/w$6;
.super Ljava/lang/Object;
.source "QuotesCenterItemFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/w;
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/xueqiu/android/stock/c/w;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/w;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/w$6;->b:Lcom/xueqiu/android/stock/c/w;

    iput-object p2, p0, Lcom/xueqiu/android/stock/c/w$6;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 275
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w$6;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0e05ce

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 278
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/w$6;->b:Lcom/xueqiu/android/stock/c/w;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/c/w;->f()Landroid/content/Context;

    move-result-object v2

    const-string v3, "key_quotes_center_new_strategy_clear_ts"

    invoke-static {v2, v3, v0, v1}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 279
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w$6;->b:Lcom/xueqiu/android/stock/c/w;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/w;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xueqiu.android.action.UPDATE_UNREAD_COUNT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 282
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/w$6;->b:Lcom/xueqiu/android/stock/c/w;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/w;->f()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/tactic/TacticStoreActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/w$6;->b:Lcom/xueqiu/android/stock/c/w;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/c/w;->a(Landroid/content/Intent;)V

    .line 285
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0xaf0

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 286
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 287
    return-void
.end method
