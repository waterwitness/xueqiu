.class public final Lcom/xueqiu/android/base/util/ar;
.super Ljava/lang/Object;
.source "StockColor.java"


# instance fields
.field public a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/xueqiu/android/base/util/ar;
    .locals 8

    .prologue
    const v7, 0x7f0d00e2

    const v6, 0x7f0d00e0

    const v5, 0x7f070570

    .line 24
    new-instance v0, Lcom/xueqiu/android/base/util/ar;

    invoke-direct {v0}, Lcom/xueqiu/android/base/util/ar;-><init>()V

    .line 25
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v1

    .line 26
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 27
    const v3, 0x7f0701ee

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v0, Lcom/xueqiu/android/base/util/ar;->b:I

    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v0, Lcom/xueqiu/android/base/util/ar;->c:I

    .line 37
    :goto_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, v0, Lcom/xueqiu/android/base/util/ar;->a:I

    .line 39
    return-object v0

    .line 33
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v0, Lcom/xueqiu/android/base/util/ar;->b:I

    .line 34
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v0, Lcom/xueqiu/android/base/util/ar;->c:I

    goto :goto_0
.end method


# virtual methods
.method public final a(D)I
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 43
    cmpl-double v0, p1, v2

    if-lez v0, :cond_0

    .line 44
    iget v0, p0, Lcom/xueqiu/android/base/util/ar;->b:I

    .line 48
    :goto_0
    return v0

    .line 45
    :cond_0
    cmpg-double v0, p1, v2

    if-gez v0, :cond_1

    .line 46
    iget v0, p0, Lcom/xueqiu/android/base/util/ar;->c:I

    goto :goto_0

    .line 48
    :cond_1
    iget v0, p0, Lcom/xueqiu/android/base/util/ar;->a:I

    goto :goto_0
.end method
