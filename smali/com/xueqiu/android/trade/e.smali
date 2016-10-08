.class public final Lcom/xueqiu/android/trade/e;
.super Ljava/lang/Object;
.source "TokenExpiresTimeSelectDialog.java"


# instance fields
.field a:Landroid/app/Activity;

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/xueqiu/android/trade/f;

.field d:Landroid/app/Dialog;

.field e:Landroid/app/Dialog;

.field private f:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/trade/e;->e:Landroid/app/Dialog;

    .line 41
    iput-object p1, p0, Lcom/xueqiu/android/trade/e;->a:Landroid/app/Activity;

    .line 42
    invoke-direct {p0}, Lcom/xueqiu/android/trade/e;->d()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/e;->b:Ljava/util/Map;

    .line 43
    return-void
.end method

.method private d()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 58
    iget-object v1, p0, Lcom/xueqiu/android/trade/e;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 59
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 61
    invoke-static {}, Lcom/xueqiu/android/trade/model/SnowxTraderConfig;->getAccessTokeExpiresConfig()Ljava/util/List;

    move-result-object v3

    .line 62
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 63
    :cond_0
    const v3, 0x7f0c0009

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/xueqiu/android/trade/e;->f:[Ljava/lang/String;

    .line 64
    :goto_0
    iget-object v3, p0, Lcom/xueqiu/android/trade/e;->f:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 65
    iget-object v3, p0, Lcom/xueqiu/android/trade/e;->f:[Ljava/lang/String;

    aget-object v3, v3, v0

    .line 66
    sget-object v4, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->ALL_DAY:Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    invoke-virtual {v4}, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->lableResId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->ALL_DAY:Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    invoke-virtual {v4}, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->value()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_2
    sget-object v4, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->THREE:Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    invoke-virtual {v4}, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->lableResId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->THREE:Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    invoke-virtual {v4}, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->value()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 70
    :cond_3
    sget-object v4, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->FIFTEEN:Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    invoke-virtual {v4}, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->lableResId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->FIFTEEN:Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    invoke-virtual {v4}, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->value()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 75
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/xueqiu/android/trade/e;->f:[Ljava/lang/String;

    move v1, v0

    .line 76
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 77
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/SnowxTraderConfigItem;

    .line 78
    iget-object v4, p0, Lcom/xueqiu/android/trade/e;->f:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/SnowxTraderConfigItem;->getConfigMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/SnowxTraderConfigItem;->getConfigValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 82
    :cond_5
    return-object v2
.end method

.method private e()I
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/xueqiu/android/trade/e;->a:Landroid/app/Activity;

    const-string v1, "trade_write_token_expires"

    sget-object v2, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->ALL_DAY:Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    .line 88
    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->value()I

    move-result v2

    .line 86
    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 89
    invoke-static {}, Lcom/xueqiu/android/trade/model/SnowxTraderConfig;->getAccessTokeExpiresConfig()Ljava/util/List;

    move-result-object v1

    .line 90
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-static {v0}, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->fromValue(I)Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->value()I

    move-result v0

    move v2, v0

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/e;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 93
    iget-object v1, p0, Lcom/xueqiu/android/trade/e;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 94
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 97
    :goto_1
    return v0

    :cond_2
    move v2, v0

    .line 90
    goto :goto_0

    .line 97
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 46
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/xueqiu/android/trade/e;->a:Landroid/app/Activity;

    const v2, 0x7f0a0085

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 47
    const v1, 0x7f0704b8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 48
    iget-object v1, p0, Lcom/xueqiu/android/trade/e;->f:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/xueqiu/android/trade/e;->e()I

    move-result v2

    new-instance v3, Lcom/xueqiu/android/trade/e$1;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/trade/e$1;-><init>(Lcom/xueqiu/android/trade/e;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 54
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/e;->d:Landroid/app/Dialog;

    .line 55
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/xueqiu/android/trade/e;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/e;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final c()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/xueqiu/android/trade/e;->e:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/e;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/e;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/trade/e;->e:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
