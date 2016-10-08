.class public final Lcom/xueqiu/android/stock/n;
.super Lcom/xueqiu/android/stock/a/ac;
.source "RZRQActivity.java"


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/RZRQActivity;

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/stock/RZRQActivity;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 106
    iput-object p1, p0, Lcom/xueqiu/android/stock/n;->a:Lcom/xueqiu/android/stock/RZRQActivity;

    .line 107
    invoke-direct {p0, p2}, Lcom/xueqiu/android/stock/a/ac;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 111
    const v1, 0x7f0800cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/xueqiu/android/stock/n;->c:I

    .line 112
    const v1, 0x7f0800cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stock/n;->d:I

    .line 113
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/xueqiu/android/stock/n;->a:Lcom/xueqiu/android/stock/RZRQActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/RZRQActivity;->b(Lcom/xueqiu/android/stock/RZRQActivity;)Lcom/google/gson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    return v0
.end method

.method public final a(I)I
    .locals 4

    .prologue
    .line 127
    .line 1036
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/ac;->b:Landroid/content/Context;

    .line 127
    invoke-static {v0}, Lcom/xueqiu/android/base/util/ay;->c(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    .line 128
    float-to-double v0, v0

    const-wide v2, 0x3fd51eb851eb851fL    # 0.33

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public final a(II)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, -0x1

    .line 138
    const-string v0, "--"

    .line 139
    if-ne p1, v2, :cond_0

    if-ne p2, v2, :cond_0

    .line 140
    iget-object v0, p0, Lcom/xueqiu/android/stock/n;->a:Lcom/xueqiu/android/stock/RZRQActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/RZRQActivity;->d(Lcom/xueqiu/android/stock/RZRQActivity;)Ljava/lang/String;

    move-result-object v0

    .line 143
    :cond_0
    if-ne p1, v2, :cond_1

    if-ltz p2, :cond_1

    .line 144
    iget-object v0, p0, Lcom/xueqiu/android/stock/n;->a:Lcom/xueqiu/android/stock/RZRQActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/RZRQActivity;->e(Lcom/xueqiu/android/stock/RZRQActivity;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    .line 147
    :cond_1
    if-ltz p1, :cond_2

    .line 148
    iget-object v1, p0, Lcom/xueqiu/android/stock/n;->a:Lcom/xueqiu/android/stock/RZRQActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/RZRQActivity;->b(Lcom/xueqiu/android/stock/RZRQActivity;)Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 149
    if-ne p2, v2, :cond_3

    .line 150
    const-string v0, "tradedate"

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    :cond_2
    :goto_0
    return-object v0

    .line 152
    :cond_3
    iget-object v2, p0, Lcom/xueqiu/android/stock/n;->a:Lcom/xueqiu/android/stock/RZRQActivity;

    invoke-static {v2}, Lcom/xueqiu/android/stock/RZRQActivity;->c(Lcom/xueqiu/android/stock/RZRQActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p2

    .line 153
    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-nez v3, :cond_2

    .line 154
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v4

    .line 155
    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-nez v0, :cond_4

    .line 156
    const-string v0, "0"

    .line 161
    :goto_1
    const/4 v1, 0x2

    if-le p2, v1, :cond_5

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u80a1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 158
    :cond_4
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/f/a;->b(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 164
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5143"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/view/View;II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 186
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 187
    iget-object v1, p0, Lcom/xueqiu/android/stock/n;->a:Lcom/xueqiu/android/stock/RZRQActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/RZRQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 189
    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 191
    if-ltz p3, :cond_0

    .line 192
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 195
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 196
    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 199
    :cond_1
    rem-int/lit8 v0, p2, 0x2

    if-ne v0, v3, :cond_2

    .line 200
    iget-object v0, p0, Lcom/xueqiu/android/stock/n;->a:Lcom/xueqiu/android/stock/RZRQActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/RZRQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/n;->a:Lcom/xueqiu/android/stock/RZRQActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/RZRQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/xueqiu/android/stock/n;->a:Lcom/xueqiu/android/stock/RZRQActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/RZRQActivity;->c(Lcom/xueqiu/android/stock/RZRQActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final b(I)I
    .locals 1

    .prologue
    .line 208
    if-gez p1, :cond_0

    .line 209
    const/4 v0, 0x0

    .line 211
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(II)I
    .locals 1

    .prologue
    .line 176
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 177
    const v0, 0x7f030127

    .line 181
    :goto_0
    return v0

    .line 179
    :cond_0
    const v0, 0x7f030126

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/xueqiu/android/stock/n;->d:I

    return v0
.end method
