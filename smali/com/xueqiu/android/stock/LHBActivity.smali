.class public Lcom/xueqiu/android/stock/LHBActivity;
.super Lcom/xueqiu/android/common/b;
.source "LHBActivity.java"


# instance fields
.field private j:Ljava/lang/String;

.field private k:Landroid/widget/ListView;

.field private p:Lcom/xueqiu/android/stock/a/j;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/view/View;

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/lang/String;

.field private u:I

.field private v:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/LHBActivity;->s:Ljava/util/ArrayList;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/stock/LHBActivity;->u:I

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/LHBActivity;I)I
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/xueqiu/android/stock/LHBActivity;->u:I

    return p1
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/LHBActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/xueqiu/android/stock/LHBActivity;->t:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/LHBActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/xueqiu/android/stock/LHBActivity;->s:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/LHBActivity;Lcom/google/gson/JsonObject;)Ljava/util/ArrayList;
    .locals 7

    .prologue
    .line 6163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6164
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6166
    const-string v2, "detail"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 6167
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 6168
    const-string v4, "%s\u9f99\u864e\u699c"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/stock/LHBActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 6170
    const-string v3, "tqQtBizunittrdinfoBuyList"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    .line 6171
    const-string v4, "tqQtBizunittrdinfoSaleList"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    .line 6173
    invoke-static {v0, v3}, Lcom/xueqiu/android/stock/LHBActivity;->a(Ljava/util/HashMap;Lcom/google/gson/JsonArray;)V

    .line 6174
    invoke-static {v1, v2}, Lcom/xueqiu/android/stock/LHBActivity;->a(Ljava/util/HashMap;Lcom/google/gson/JsonArray;)V

    .line 6177
    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/LHBActivity;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0

    .line 29
    return-object v0
.end method

.method private static a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/F10Table;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 181
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 182
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 183
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 184
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 185
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    new-instance v5, Lcom/xueqiu/android/stock/model/F10Table;

    invoke-direct {v5}, Lcom/xueqiu/android/stock/model/F10Table;-><init>()V

    .line 187
    new-instance v6, Lcom/xueqiu/android/stock/model/F10Table;

    invoke-direct {v6}, Lcom/xueqiu/android/stock/model/F10Table;-><init>()V

    .line 189
    invoke-virtual {v5, v0}, Lcom/xueqiu/android/stock/model/F10Table;->setTitle(Ljava/lang/String;)V

    .line 190
    new-array v1, v8, [Ljava/lang/String;

    const-string v7, "\u4e70\u5165\u673a\u6784"

    aput-object v7, v1, v9

    const-string v7, "\u4e70\u5165\u91d1\u989d(\u4e07\u5143)"

    aput-object v7, v1, v10

    invoke-virtual {v5, v1}, Lcom/xueqiu/android/stock/model/F10Table;->setHeader([Ljava/lang/String;)V

    .line 191
    new-array v1, v8, [Ljava/lang/String;

    const-string v7, "\u5356\u51fa\u673a\u6784"

    aput-object v7, v1, v9

    const-string v7, "\u5356\u51fa\u91d1\u989d(\u4e07\u5143)"

    aput-object v7, v1, v10

    invoke-virtual {v6, v1}, Lcom/xueqiu/android/stock/model/F10Table;->setHeader([Ljava/lang/String;)V

    .line 193
    new-array v1, v8, [Ljava/lang/String;

    const-string v7, "left"

    aput-object v7, v1, v9

    const-string v7, "right"

    aput-object v7, v1, v10

    invoke-virtual {v5, v1}, Lcom/xueqiu/android/stock/model/F10Table;->setAlign([Ljava/lang/String;)V

    .line 194
    new-array v1, v8, [Ljava/lang/String;

    const-string v7, "left"

    aput-object v7, v1, v9

    const-string v7, "right"

    aput-object v7, v1, v10

    invoke-virtual {v6, v1}, Lcom/xueqiu/android/stock/model/F10Table;->setAlign([Ljava/lang/String;)V

    .line 196
    new-array v1, v8, [I

    fill-array-data v1, :array_0

    invoke-virtual {v5, v1}, Lcom/xueqiu/android/stock/model/F10Table;->setWidth([I)V

    .line 197
    new-array v1, v8, [I

    fill-array-data v1, :array_1

    invoke-virtual {v6, v1}, Lcom/xueqiu/android/stock/model/F10Table;->setWidth([I)V

    .line 199
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v1, v10}, Lcom/xueqiu/android/stock/LHBActivity;->a(Ljava/util/ArrayList;Z)[[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/xueqiu/android/stock/model/F10Table;->setRowdata([[Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v0, v9}, Lcom/xueqiu/android/stock/LHBActivity;->a(Ljava/util/ArrayList;Z)[[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/xueqiu/android/stock/model/F10Table;->setRowdata([[Ljava/lang/String;)V

    .line 202
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 209
    :cond_1
    return-object v2

    .line 196
    :array_0
    .array-data 4
        0x6
        0x4
    .end array-data

    .line 197
    :array_1
    .array-data 4
        0x6
        0x4
    .end array-data
.end method

.method private static a(Ljava/util/HashMap;Lcom/google/gson/JsonArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;>;",
            "Lcom/google/gson/JsonArray;",
            ")V"
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    .line 146
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 147
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 148
    const-string v0, "typedesc"

    invoke-virtual {v3, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 158
    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 154
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    invoke-virtual {p0, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 160
    :cond_1
    return-void
.end method

.method private static a(Ljava/util/ArrayList;Z)[[Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;Z)[[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 213
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 214
    filled-new-array {v5, v10}, [I

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    move v3, v4

    .line 215
    :goto_0
    if-ge v3, v5, :cond_1

    .line 216
    new-array v6, v10, [Ljava/lang/String;

    .line 217
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    .line 218
    const-string v2, "bizsunitname"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v4

    .line 220
    if-eqz p1, :cond_0

    const-string v2, "buyamt"

    .line 221
    :goto_1
    const-string v7, "%.2f"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    const v2, 0x461c4000    # 10000.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v9

    .line 223
    aput-object v6, v0, v3

    .line 215
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 220
    :cond_0
    const-string v2, "saleamt"

    goto :goto_1

    .line 226
    :cond_1
    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/LHBActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/xueqiu/android/stock/LHBActivity;->v:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/stock/LHBActivity;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/xueqiu/android/stock/LHBActivity;->u:I

    return v0
.end method

.method static synthetic d(Lcom/xueqiu/android/stock/LHBActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/xueqiu/android/stock/LHBActivity;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/stock/LHBActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/xueqiu/android/stock/LHBActivity;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/stock/LHBActivity;)V
    .locals 4

    .prologue
    .line 29
    .line 5120
    iget-object v0, p0, Lcom/xueqiu/android/stock/LHBActivity;->t:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 5124
    iget-object v1, p0, Lcom/xueqiu/android/stock/LHBActivity;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/xueqiu/android/stock/LHBActivity;->t:Ljava/lang/String;

    new-instance v3, Lcom/xueqiu/android/stock/LHBActivity$3;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/stock/LHBActivity$3;-><init>(Lcom/xueqiu/android/stock/LHBActivity;)V

    .line 5307
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/base/b/ak;->g(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 29
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/xueqiu/android/stock/LHBActivity;)Lcom/xueqiu/android/stock/a/j;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/xueqiu/android/stock/LHBActivity;->p:Lcom/xueqiu/android/stock/a/j;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/LHBActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_symbol"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/LHBActivity;->j:Ljava/lang/String;

    .line 48
    iput-object p0, p0, Lcom/xueqiu/android/stock/LHBActivity;->v:Landroid/content/Context;

    .line 49
    const v0, 0x7f030047

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/LHBActivity;->setContentView(I)V

    .line 51
    const v0, 0x7f0e0190

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/LHBActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stock/LHBActivity;->q:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0e018f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/LHBActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/LHBActivity;->r:Landroid/view/View;

    .line 53
    const v0, 0x7f0e0191

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/LHBActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xueqiu/android/stock/LHBActivity;->k:Landroid/widget/ListView;

    .line 54
    new-instance v0, Lcom/xueqiu/android/stock/a/j;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/stock/a/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/LHBActivity;->p:Lcom/xueqiu/android/stock/a/j;

    .line 55
    iget-object v0, p0, Lcom/xueqiu/android/stock/LHBActivity;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/stock/LHBActivity;->p:Lcom/xueqiu/android/stock/a/j;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 4091
    iget-object v1, p0, Lcom/xueqiu/android/stock/LHBActivity;->j:Ljava/lang/String;

    new-instance v2, Lcom/xueqiu/android/stock/LHBActivity$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/stock/LHBActivity$2;-><init>(Lcom/xueqiu/android/stock/LHBActivity;)V

    .line 4303
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/base/b/ak;->g(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 58
    iget-object v0, p0, Lcom/xueqiu/android/stock/LHBActivity;->r:Landroid/view/View;

    new-instance v1, Lcom/xueqiu/android/stock/LHBActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/LHBActivity$1;-><init>(Lcom/xueqiu/android/stock/LHBActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method
