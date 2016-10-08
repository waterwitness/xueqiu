.class public Lcom/xueqiu/android/community/CountryCodeSelectActivity;
.super Lcom/xueqiu/android/common/b;
.source "CountryCodeSelectActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method

.method private j()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/common/model/CountryCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    :try_start_0
    invoke-virtual {p0}, Lcom/xueqiu/android/community/CountryCodeSelectActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "country_code"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 147
    const/16 v2, 0x200

    new-array v2, v2, [B

    .line 148
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 149
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 151
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 153
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GroupParser;

    new-instance v2, Lcom/xueqiu/android/common/model/parser/CountryCodeParser;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/parser/CountryCodeParser;-><init>()V

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/model/parser/GroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/model/parser/GroupParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f030063

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/CountryCodeSelectActivity;->setContentView(I)V

    .line 1050
    const v0, 0x7f0e01da

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/CountryCodeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 1051
    const v1, 0x7f0e0331

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/CountryCodeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f070349

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 1053
    invoke-direct {p0}, Lcom/xueqiu/android/community/CountryCodeSelectActivity;->j()Ljava/util/ArrayList;

    move-result-object v6

    .line 1054
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1056
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1059
    const v1, 0x7f070167

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/CountryCodeSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1060
    array-length v1, v8

    new-array v9, v1, [Lcom/xueqiu/android/common/model/IAlphabetSortable;

    .line 1062
    new-instance v10, Ljava/util/TreeMap;

    invoke-direct {v10}, Ljava/util/TreeMap;-><init>()V

    .line 1063
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_4

    .line 1064
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/common/model/CountryCode;

    .line 1065
    iget-object v2, v1, Lcom/xueqiu/android/common/model/CountryCode;->pyName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 1066
    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1067
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1071
    :cond_0
    invoke-interface {v10, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1072
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1073
    invoke-interface {v10, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    :goto_1
    const/4 v5, 0x0

    .line 1079
    const/4 v4, 0x0

    :goto_2
    array-length v11, v9

    if-ge v4, v11, :cond_6

    .line 1080
    iget-object v11, v1, Lcom/xueqiu/android/common/model/CountryCode;->cnName:Ljava/lang/String;

    aget-object v12, v8, v4

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1081
    aput-object v1, v9, v4

    .line 1082
    const/4 v4, 0x1

    .line 1086
    :goto_3
    if-nez v4, :cond_1

    .line 1087
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1063
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 1075
    :cond_2
    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    goto :goto_1

    .line 1079
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1091
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1092
    const-string v1, "\u5e38\u7528"

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 1093
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1095
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1096
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1097
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1098
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1099
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 1100
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1103
    :cond_5
    new-instance v2, Lcom/xueqiu/android/common/a/a;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v3, v1}, Lcom/xueqiu/android/common/a/a;-><init>(Landroid/content/Context;Ljava/util/List;B)V

    .line 1104
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1107
    const v1, 0x7f0e0331

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/CountryCodeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    check-cast v1, Landroid/widget/EditText;

    new-instance v3, Lcom/xueqiu/android/community/CountryCodeSelectActivity$1;

    invoke-direct {v3, p0, v2}, Lcom/xueqiu/android/community/CountryCodeSelectActivity$1;-><init>(Lcom/xueqiu/android/community/CountryCodeSelectActivity;Lcom/xueqiu/android/common/a/a;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1124
    new-instance v1, Lcom/xueqiu/android/community/CountryCodeSelectActivity$2;

    invoke-direct {v1, p0, v2}, Lcom/xueqiu/android/community/CountryCodeSelectActivity$2;-><init>(Lcom/xueqiu/android/community/CountryCodeSelectActivity;Lcom/xueqiu/android/common/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 47
    return-void

    :cond_6
    move v4, v5

    goto :goto_3
.end method
