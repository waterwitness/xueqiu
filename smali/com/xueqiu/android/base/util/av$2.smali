.class final Lcom/xueqiu/android/base/util/av$2;
.super Lcom/xueqiu/android/base/b/p;
.source "SyncLaunchDataTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/util/av;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/gson/internal/LinkedTreeMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:Lcom/xueqiu/android/base/util/av;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/util/av;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/xueqiu/android/base/util/av$2;->d:Lcom/xueqiu/android/base/util/av;

    iput-object p2, p0, Lcom/xueqiu/android/base/util/av$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xueqiu/android/base/util/av$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/xueqiu/android/base/util/av$2;->c:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 279
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 276
    check-cast p1, Ljava/util/List;

    .line 1283
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1284
    :cond_0
    :goto_0
    return-void

    .line 1286
    :cond_1
    new-instance v3, Lcom/google/gson/internal/LinkedHashTreeMap;

    invoke-direct {v3}, Lcom/google/gson/internal/LinkedHashTreeMap;-><init>()V

    .line 1288
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1289
    check-cast v0, Lcom/google/gson/internal/LinkedTreeMap;

    .line 1290
    const-string v2, "type"

    invoke-virtual {v0, v2}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "value"

    invoke-virtual {v0, v2}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1291
    const-string v2, "type"

    invoke-virtual {v0, v2}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "value"

    invoke-virtual {v0, v4}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1294
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/base/util/av$2;->d:Lcom/xueqiu/android/base/util/av;

    .line 2043
    iget-object v0, v0, Lcom/xueqiu/android/base/util/av;->b:Landroid/content/SharedPreferences;

    .line 1294
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1295
    iget-object v0, p0, Lcom/xueqiu/android/base/util/av$2;->a:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xueqiu/android/base/util/av$2;->b:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xueqiu/android/base/util/av$2;->a:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/base/util/av$2;->b:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1297
    const v1, 0x7f0701eb

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    .line 1298
    iget-object v2, p0, Lcom/xueqiu/android/base/util/av$2;->d:Lcom/xueqiu/android/base/util/av;

    .line 3043
    iget-object v2, v2, Lcom/xueqiu/android/base/util/av;->b:Landroid/content/SharedPreferences;

    .line 1298
    const v5, 0x7f0702dc

    invoke-static {v5}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1299
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1300
    invoke-interface {v4, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1303
    :cond_4
    iget-object v5, p0, Lcom/xueqiu/android/base/util/av$2;->c:[Ljava/lang/String;

    array-length v6, v5

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    if-ge v2, v6, :cond_e

    aget-object v1, v5, v2

    .line 1304
    iget-object v0, p0, Lcom/xueqiu/android/base/util/av$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/xueqiu/android/base/util/av$2;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1307
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4554
    const v0, 0x7f07036b

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4555
    const v0, 0x7f0701e5

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 1308
    :goto_3
    const-string v7, "1"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1303
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 4556
    :cond_6
    const v0, 0x7f070364

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4557
    const v0, 0x7f0701e3

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 4558
    :cond_7
    const v0, 0x7f07036d

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4559
    const v0, 0x7f0701e7

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 4560
    :cond_8
    const v0, 0x7f070370

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4561
    const v0, 0x7f0701ea

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 4562
    :cond_9
    const v0, 0x7f07036e

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4563
    const v0, 0x7f0701e8

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 4564
    :cond_a
    const v0, 0x7f07036f

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4565
    const v0, 0x7f0701e9

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 4566
    :cond_b
    const v0, 0x7f070371

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4567
    const v0, 0x7f0701ec

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 4568
    :cond_c
    const v0, 0x7f07036c

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4569
    const v0, 0x7f0701e6

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 4570
    :cond_d
    const v0, 0x7f07036a

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4571
    const v0, 0x7f0701e4

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 1311
    :cond_e
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    :cond_f
    move-object v0, v1

    goto/16 :goto_3
.end method
