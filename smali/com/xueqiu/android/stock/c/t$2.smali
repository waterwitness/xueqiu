.class final Lcom/xueqiu/android/stock/c/t$2;
.super Lcom/xueqiu/android/base/b/p;
.source "QuoteFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/t;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/xueqiu/android/stock/c/t;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/t;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/t$2;->b:Lcom/xueqiu/android/stock/c/t;

    iput-object p2, p0, Lcom/xueqiu/android/stock/c/t$2;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 186
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 187
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 183
    check-cast p1, Lorg/json/JSONObject;

    .line 1192
    :try_start_0
    const-string v0, "totalcount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1193
    if-lez v0, :cond_1

    .line 1194
    iget-object v3, p0, Lcom/xueqiu/android/stock/c/t$2;->a:Landroid/widget/TextView;

    const-string v4, "%s\u4eba\u5173\u6ce8"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    int-to-double v0, v0

    .line 2084
    const/4 v2, 0x3

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v8, ""

    aput-object v8, v7, v2

    const/4 v2, 0x1

    const-string v8, "\u4e07"

    aput-object v8, v7, v2

    const/4 v2, 0x2

    const-string v8, "\u4ebf"

    aput-object v8, v7, v2

    .line 2085
    const/4 v2, 0x0

    .line 2086
    :goto_0
    const-wide v8, 0x40c3880000000000L    # 10000.0

    cmpl-double v8, v0, v8

    if-lez v8, :cond_0

    const/4 v8, 0x2

    if-ge v2, v8, :cond_0

    .line 2087
    const-wide v8, 0x40c3880000000000L    # 10000.0

    div-double/2addr v0, v8

    .line 2088
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2091
    :cond_0
    if-lez v2, :cond_2

    .line 2092
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v8

    .line 2093
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v7, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1194
    :goto_1
    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1195
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/t$2;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1199
    :cond_1
    :goto_2
    return-void

    .line 2095
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v7, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 1198
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method
