.class public final Lcom/xueqiu/android/stock/c/c;
.super Lcom/xueqiu/android/common/c;
.source "FinancialDataPageFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/l;


# instance fields
.field public a:Z

.field private ak:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private al:Lcom/xueqiu/android/stock/view/TableFixHeaders;

.field private am:Lcom/google/gson/JsonArray;

.field private an:Landroid/view/View;

.field private ao:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Lcom/google/gson/JsonObject;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/c;->c:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/c;->h:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/c;->ak:Ljava/util/ArrayList;

    .line 66
    iput-boolean v1, p0, Lcom/xueqiu/android/stock/c/c;->a:Z

    .line 67
    iput-boolean v1, p0, Lcom/xueqiu/android/stock/c/c;->ao:Z

    .line 184
    return-void
.end method

.method private C()Lcom/xueqiu/android/base/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Lcom/xueqiu/android/stock/c/c$2;

    invoke-direct {v0, p0, p0}, Lcom/xueqiu/android/stock/c/c$2;-><init>(Lcom/xueqiu/android/stock/c/c;Lcom/xueqiu/android/base/b/q;)V

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/c/c;Lcom/google/gson/JsonArray;)Lcom/google/gson/JsonArray;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/c;->am:Lcom/google/gson/JsonArray;

    return-object p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/xueqiu/android/stock/c/c;
    .locals 3

    .prologue
    .line 78
    new-instance v0, Lcom/xueqiu/android/stock/c/c;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/c/c;-><init>()V

    .line 79
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 80
    const-string v2, "arg_symbol"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v2, "arg_page_type"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v2, "arg_is_year"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/c;->e(Landroid/os/Bundle;)V

    .line 84
    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/c/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/c;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/c/c;)Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/c/c;->ao:Z

    return v0
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/c/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/c;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/c/c;)V
    .locals 6

    .prologue
    .line 8112
    const/4 v1, 0x0

    .line 8114
    :try_start_0
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/c;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "financial_data_field_name.json"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 8115
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 8116
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v3, Lcom/xueqiu/android/stock/c/c$1;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/stock/c/c$1;-><init>(Lcom/xueqiu/android/stock/c/c;)V

    .line 8117
    invoke-virtual {v3}, Lcom/xueqiu/android/stock/c/c$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 8116
    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/c;->g:Lcom/google/gson/JsonObject;

    .line 8118
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/c;->g:Lcom/google/gson/JsonObject;

    iget-object v3, p0, Lcom/xueqiu/android/stock/c/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 8119
    iget-object v3, p0, Lcom/xueqiu/android/stock/c/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 8120
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 8121
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 8122
    iget-object v4, p0, Lcom/xueqiu/android/stock/c/c;->h:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8123
    iget-object v4, p0, Lcom/xueqiu/android/stock/c/c;->ak:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 8127
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8129
    if-eqz v1, :cond_0

    .line 8131
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 8134
    :cond_0
    :goto_1
    return-void

    .line 8125
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8129
    if-eqz v1, :cond_0

    .line 8131
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 8133
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 8129
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 8131
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 8134
    :cond_2
    :goto_2
    throw v0

    .line 8133
    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic c(Lcom/xueqiu/android/stock/c/c;)Lcom/xueqiu/android/stock/view/TableFixHeaders;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/c;->al:Lcom/xueqiu/android/stock/view/TableFixHeaders;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/stock/c/c;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/c;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/stock/c/c;)Lcom/google/gson/JsonArray;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/c;->am:Lcom/google/gson/JsonArray;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/stock/c/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/xueqiu/android/stock/c/c;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/c;->ak:Ljava/util/ArrayList;

    return-object v0
.end method

.method private u()V
    .locals 4

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/c/c;->ao:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/c;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    if-nez v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/c;->d:Ljava/lang/String;

    const-string v1, "ZCFZB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/c;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/c;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/xueqiu/android/stock/c/c;->e:Z

    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/c;->C()Lcom/xueqiu/android/base/b/p;

    move-result-object v3

    .line 6311
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/base/b/ak;->a(Ljava/lang/String;ZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/c;->d:Ljava/lang/String;

    const-string v1, "XJLLB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/c;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/c;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/xueqiu/android/stock/c/c;->e:Z

    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/c;->C()Lcom/xueqiu/android/base/b/p;

    move-result-object v3

    .line 6319
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/base/b/ak;->c(Ljava/lang/String;ZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/c;->d:Ljava/lang/String;

    const-string v1, "GSLRB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/c;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/c;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/xueqiu/android/stock/c/c;->e:Z

    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/c;->C()Lcom/xueqiu/android/base/b/p;

    move-result-object v3

    .line 7315
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/base/b/ak;->b(Ljava/lang/String;ZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method


# virtual methods
.method public final C_()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/c;->u()V

    .line 177
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 100
    const v0, 0x7f03013c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/c;->an:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/c;->an:Landroid/view/View;

    const v1, 0x7f0e0194

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/view/TableFixHeaders;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/c;->al:Lcom/xueqiu/android/stock/view/TableFixHeaders;

    .line 102
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/c;->al:Lcom/xueqiu/android/stock/view/TableFixHeaders;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->setVisibility(I)V

    .line 104
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/c/c;->a:Z

    if-eqz v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/c;->u()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/c;->an:Landroid/view/View;

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 3564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 91
    const-string v1, "arg_symbol"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/c;->b:Ljava/lang/String;

    .line 4564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 92
    const-string v1, "arg_page_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/c;->d:Ljava/lang/String;

    .line 5564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 93
    const-string v1, "arg_is_year"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/c/c;->e:Z

    .line 94
    return-void
.end method
