.class final Lcom/xueqiu/android/base/b/e$1;
.super Ljava/lang/Object;
.source "InvestmentCalendarClient.java"

# interfaces
.implements Lcom/xueqiu/android/common/model/parser/Parser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/b/e;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xueqiu/android/common/model/parser/Parser",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/stock/model/InvCalEventsPair;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/b/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/e;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/xueqiu/android/base/b/e$1;->a:Lcom/xueqiu/android/base/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/InvCalEventsPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x0

    .line 189
    if-eqz p1, :cond_1

    .line 190
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 192
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 193
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 196
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 197
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 198
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 199
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_0

    .line 200
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 201
    invoke-static {v7}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;)Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    move-result-object v7

    .line 202
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 205
    :cond_0
    new-instance v2, Lcom/xueqiu/android/stock/model/InvCalEventsPair;

    invoke-direct {v2}, Lcom/xueqiu/android/stock/model/InvCalEventsPair;-><init>()V

    .line 207
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    const-string v5, "yyyy-MM-dd"

    const-string v7, "yyyy-MM-dd"

    invoke-static {v0, v4, v5, v7}, Lcom/xueqiu/android/base/util/h;->a(Ljava/lang/String;Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 209
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd"

    invoke-direct {v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 211
    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 212
    invoke-static {v4}, Lcom/xueqiu/android/base/b/e;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/xueqiu/android/stock/model/InvCalEventsPair;->mDate:Ljava/lang/String;

    .line 214
    iput-object v6, v2, Lcom/xueqiu/android/stock/model/InvCalEventsPair;->mEventList:Ljava/util/ArrayList;

    .line 215
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 223
    :cond_1
    :goto_3
    return-object v0

    .line 217
    :cond_2
    :try_start_2
    new-instance v0, Lcom/xueqiu/android/base/b/f;

    iget-object v2, p0, Lcom/xueqiu/android/base/b/e$1;->a:Lcom/xueqiu/android/base/b/e;

    invoke-direct {v0, v2}, Lcom/xueqiu/android/base/b/f;-><init>(Lcom/xueqiu/android/base/b/e;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    goto :goto_3

    .line 220
    :catch_1
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public final synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/xueqiu/android/base/b/e$1;->a(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return-object v0
.end method
