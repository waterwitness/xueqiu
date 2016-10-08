.class public final Lcom/xueqiu/android/stock/c/d;
.super Lcom/xueqiu/android/stock/a/ac;
.source "FinancialDataPageFragment.java"


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/c;

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/stock/c/c;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 189
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/d;->a:Lcom/xueqiu/android/stock/c/c;

    .line 190
    invoke-direct {p0, p2}, Lcom/xueqiu/android/stock/a/ac;-><init>(Landroid/content/Context;)V

    .line 192
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 194
    const v1, 0x7f0800cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/xueqiu/android/stock/c/d;->c:I

    .line 195
    const v1, 0x7f0800cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stock/c/d;->d:I

    .line 196
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/d;->a:Lcom/xueqiu/android/stock/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/c;->d(Lcom/xueqiu/android/stock/c/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final a(I)I
    .locals 4

    .prologue
    .line 210
    .line 1036
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/ac;->b:Landroid/content/Context;

    .line 210
    invoke-static {v0}, Lcom/xueqiu/android/base/util/ay;->c(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    .line 212
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 213
    float-to-double v0, v0

    const-wide v2, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 215
    :goto_0
    return v0

    :cond_0
    float-to-double v0, v0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0
.end method

.method public final a(II)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 226
    const-string v1, "--"

    .line 227
    if-ne p1, v3, :cond_0

    if-ne p2, v3, :cond_0

    .line 228
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/d;->a:Lcom/xueqiu/android/stock/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/c;->f(Lcom/xueqiu/android/stock/c/c;)Ljava/lang/String;

    move-result-object v1

    .line 231
    :cond_0
    if-ne p1, v3, :cond_1

    if-ltz p2, :cond_1

    .line 232
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/d;->a:Lcom/xueqiu/android/stock/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/c;->e(Lcom/xueqiu/android/stock/c/c;)Lcom/google/gson/JsonArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 233
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/d;->a:Lcom/xueqiu/android/stock/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/c;->d(Lcom/xueqiu/android/stock/c/c;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    :cond_1
    if-ltz p1, :cond_3

    .line 237
    if-ne p2, v3, :cond_2

    .line 238
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/d;->a:Lcom/xueqiu/android/stock/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/c;->g(Lcom/xueqiu/android/stock/c/c;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 248
    :goto_0
    return-object v0

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/d;->a:Lcom/xueqiu/android/stock/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/c;->d(Lcom/xueqiu/android/stock/c/c;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/d;->a:Lcom/xueqiu/android/stock/c/c;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/c;->e(Lcom/xueqiu/android/stock/c/c;)Lcom/google/gson/JsonArray;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 242
    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-nez v3, :cond_3

    .line 243
    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/f/a;->b(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Landroid/view/View;II)V
    .locals 6

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 264
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 265
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/d;->a:Lcom/xueqiu/android/stock/c/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/c;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 266
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 267
    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 269
    if-ltz p3, :cond_0

    .line 270
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 273
    :cond_0
    if-ne p2, v3, :cond_2

    .line 274
    invoke-virtual {v0, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 288
    :cond_1
    :goto_0
    rem-int/lit8 v0, p2, 0x2

    if-ne v0, v4, :cond_3

    .line 289
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/d;->a:Lcom/xueqiu/android/stock/c/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/c;->h()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 293
    :goto_1
    return-void

    .line 276
    :cond_2
    invoke-virtual {p0, p2, v3}, Lcom/xueqiu/android/stock/c/d;->a(II)Ljava/lang/String;

    move-result-object v1

    .line 277
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    invoke-virtual {v0, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 279
    if-ne p3, v3, :cond_1

    .line 280
    const-string v2, "#"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/d;->a:Lcom/xueqiu/android/stock/c/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/c;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 283
    invoke-virtual {v0, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 291
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/d;->a:Lcom/xueqiu/android/stock/c/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/c;->h()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/d;->a:Lcom/xueqiu/android/stock/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/c;->e(Lcom/xueqiu/android/stock/c/c;)Lcom/google/gson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    return v0
.end method

.method public final b(I)I
    .locals 1

    .prologue
    .line 297
    if-gez p1, :cond_0

    .line 298
    const/4 v0, 0x0

    .line 300
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(II)I
    .locals 1

    .prologue
    .line 254
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 255
    const v0, 0x7f030127

    .line 259
    :goto_0
    return v0

    .line 257
    :cond_0
    const v0, 0x7f030126

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/xueqiu/android/stock/c/d;->d:I

    return v0
.end method
