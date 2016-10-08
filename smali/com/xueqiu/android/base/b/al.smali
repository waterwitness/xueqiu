.class public final Lcom/xueqiu/android/base/b/al;
.super Lcom/xueqiu/android/base/b/a;
.source "TacticClient.java"


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/base/b/ae;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/xueqiu/android/base/b/a;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/xueqiu/android/base/b/al;->f:Lcom/xueqiu/android/base/b/ae;

    .line 50
    return-void
.end method


# virtual methods
.method public final a(ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/tactic/d/g;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/tactic/d/g;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/xueqiu/android/common/model/parser/GParser;

    new-instance v1, Lcom/xueqiu/android/base/b/al$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/b/al$3;-><init>(Lcom/xueqiu/android/base/b/al;)V

    .line 74
    invoke-virtual {v1}, Lcom/xueqiu/android/base/b/al$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 76
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 84
    if-lez p1, :cond_0

    .line 85
    const-string v2, "category"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_0
    const-string v2, "/snowmart/product/list"

    .line 2044
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-static {v2, v1, p2, v0}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/xueqiu/android/base/b/al;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 91
    return-object v0
.end method

.method public final a(JILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/tactic/d/d;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/tactic/d/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Lcom/xueqiu/android/common/model/parser/GParser;

    new-instance v1, Lcom/xueqiu/android/base/b/al$7;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/b/al$7;-><init>(Lcom/xueqiu/android/base/b/al;)V

    .line 158
    invoke-virtual {v1}, Lcom/xueqiu/android/base/b/al$7;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 159
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 160
    const-string v2, "product_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v2, "quantity"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v2, "/snowmart/order/create"

    .line 6044
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-static {v2, v1, p4, v0}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/xueqiu/android/base/b/al;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 166
    return-object v0
.end method

.method public final a(JJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/parser/PagedIdList",
            "<",
            "Lcom/xueqiu/android/tactic/d/h;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/parser/PagedIdList",
            "<",
            "Lcom/xueqiu/android/tactic/d/h;",
            ">;>;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 206
    cmp-long v1, p1, v4

    if-lez v1, :cond_0

    .line 207
    const-string v1, "since_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_0
    cmp-long v1, p3, v4

    if-lez v1, :cond_1

    .line 210
    const-string v1, "max_id"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_1
    const-string v1, "count"

    const-string v2, "5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GParser;

    new-instance v2, Lcom/xueqiu/android/base/b/al$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/base/b/al$2;-><init>(Lcom/xueqiu/android/base/b/al;)V

    .line 214
    invoke-virtual {v2}, Lcom/xueqiu/android/base/b/al$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 215
    const-string v2, "/snowmart/push/timeline"

    .line 9044
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-static {v2, v0, p5, v1}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/xueqiu/android/base/b/al;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 221
    return-object v0
.end method

.method public final a(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/tactic/d/g;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/tactic/d/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lcom/xueqiu/android/common/model/parser/GParser;

    new-instance v1, Lcom/xueqiu/android/base/b/al$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/b/al$1;-><init>(Lcom/xueqiu/android/base/b/al;)V

    .line 55
    invoke-virtual {v1}, Lcom/xueqiu/android/base/b/al$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 57
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 58
    const-string v2, "product_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v2, "/snowmart/product"

    .line 1044
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-static {v2, v1, p3, v0}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/xueqiu/android/base/b/al;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 63
    return-object v0
.end method

.method public final a(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/tactic/d/i;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/tactic/d/i;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Lcom/xueqiu/android/common/model/parser/GParser;

    new-instance v1, Lcom/xueqiu/android/base/b/al$5;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/b/al$5;-><init>(Lcom/xueqiu/android/base/b/al;)V

    .line 114
    invoke-virtual {v1}, Lcom/xueqiu/android/base/b/al$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 115
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 116
    const-string v2, "/snowmart/inventory/list"

    .line 4044
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-static {v2, v1, p1, v0}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/xueqiu/android/base/b/al;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 119
    return-object v0
.end method

.method public final a(Lcom/xueqiu/android/base/b/r;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/r;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/tactic/d/g;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/tactic/d/g;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Lcom/xueqiu/android/common/model/parser/GParser;

    new-instance v1, Lcom/xueqiu/android/base/b/al$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/b/al$4;-><init>(Lcom/xueqiu/android/base/b/al;)V

    .line 97
    invoke-virtual {v1}, Lcom/xueqiu/android/base/b/al$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 99
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 100
    const-string v2, "size"

    const-string v3, "6"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v2, "/snowmart/product/top_list"

    .line 3044
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-static {v2, v1, p2, v0}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 104
    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/b/x;->a(Lcom/xueqiu/android/base/b/r;)V

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/base/b/al;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 108
    return-object v0
.end method

.method public final b(JILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/tactic/d/b;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/tactic/d/b;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 171
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "count"

    const-string v3, "10"

    .line 172
    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "page"

    .line 173
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "product_id"

    .line 174
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 176
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GParser;

    new-instance v2, Lcom/xueqiu/android/base/b/al$8;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/base/b/al$8;-><init>(Lcom/xueqiu/android/base/b/al;)V

    .line 177
    invoke-virtual {v2}, Lcom/xueqiu/android/base/b/al$8;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 178
    const-string v2, "/snowmart/push/stocks"

    .line 7044
    invoke-static {v2, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-static {v2, v0, p4, v1}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/xueqiu/android/base/b/al;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 184
    return-object v0
.end method

.method public final b(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Lcom/xueqiu/android/base/b/al$6;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/base/b/al$6;-><init>(Lcom/xueqiu/android/base/b/al;)V

    .line 146
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 147
    const-string v2, "product_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v2, "on"

    const-string v3, "false"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v2, "/snowmart/preference/switch"

    .line 5044
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-static {v2, v1, p3, v0}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/xueqiu/android/base/b/al;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 152
    return-object v0
.end method

.method public final b(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/community/model/UserNotification;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/community/model/UserNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 226
    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 227
    const-string v1, "since_id"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_0
    const-string v1, "/snowmart/push/status/last"

    .line 10044
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 230
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-string v3, "status_last"

    const-class v4, Lcom/xueqiu/android/community/model/UserNotification;

    invoke-direct {v2, v3, v4}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 229
    invoke-static {v1, v0, p1, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/xueqiu/android/base/b/al;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 233
    return-object v0
.end method

.method public final c(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/tactic/d/h;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/tactic/d/h;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 189
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "id"

    .line 190
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 192
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GParser;

    new-instance v2, Lcom/xueqiu/android/base/b/al$9;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/base/b/al$9;-><init>(Lcom/xueqiu/android/base/b/al;)V

    .line 193
    invoke-virtual {v2}, Lcom/xueqiu/android/base/b/al$9;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 194
    const-string v2, "/snowmart/push/status"

    .line 8044
    invoke-static {v2, v4}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-static {v2, v0, p3, v1}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/xueqiu/android/base/b/al;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 200
    return-object v0
.end method
