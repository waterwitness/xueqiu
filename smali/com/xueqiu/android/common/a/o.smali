.class final Lcom/xueqiu/android/common/a/o;
.super Landroid/widget/Filter;
.source "SeparatedGroupAdapter.java"


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/a/m;


# direct methods
.method private constructor <init>(Lcom/xueqiu/android/common/a/m;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/xueqiu/android/common/a/o;->a:Lcom/xueqiu/android/common/a/m;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xueqiu/android/common/a/m;B)V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/a/o;-><init>(Lcom/xueqiu/android/common/a/m;)V

    return-void
.end method


# virtual methods
.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6

    .prologue
    .line 247
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const/4 v0, 0x0

    .line 265
    :goto_0
    return-object v0

    .line 251
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 253
    iget-object v0, p0, Lcom/xueqiu/android/common/a/o;->a:Lcom/xueqiu/android/common/a/m;

    invoke-static {v0}, Lcom/xueqiu/android/common/a/m;->a(Lcom/xueqiu/android/common/a/m;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 254
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 255
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 256
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 257
    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 258
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 262
    :cond_3
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 263
    iput-object v3, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 264
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 270
    if-eqz p2, :cond_0

    .line 271
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 272
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lcom/xueqiu/android/common/a/o;->a:Lcom/xueqiu/android/common/a/m;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/xueqiu/android/common/a/m;->a(Lcom/xueqiu/android/common/a/m;Ljava/util/List;)Ljava/util/List;

    .line 274
    iget-object v1, p0, Lcom/xueqiu/android/common/a/o;->a:Lcom/xueqiu/android/common/a/m;

    invoke-static {v1}, Lcom/xueqiu/android/common/a/m;->b(Lcom/xueqiu/android/common/a/m;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/common/a/o;->a:Lcom/xueqiu/android/common/a/m;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/m;->notifyDataSetChanged()V

    .line 279
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/a/o;->a:Lcom/xueqiu/android/common/a/m;

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/a/m;->a(Lcom/xueqiu/android/common/a/m;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method
