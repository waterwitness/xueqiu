.class public final Lcom/snowballfinance/messageplatform/a/y;
.super Lcom/snowballfinance/messageplatform/a/a;
.source "Request.java"


# instance fields
.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/Long;

.field public g:[B

.field public h:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/snowballfinance/messageplatform/a/a;-><init>()V

    return-void
.end method

.method private static a(Lcom/snowballfinance/messageplatform/a/v;Ljava/lang/String;)Lcom/snowballfinance/messageplatform/a/y;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Lcom/snowballfinance/messageplatform/a/y;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/y;-><init>()V

    .line 124
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/v;->name()Ljava/lang/String;

    move-result-object v1

    .line 2066
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/y;->d:Ljava/lang/String;

    .line 125
    if-eqz p1, :cond_0

    .line 126
    invoke-static {p1}, Lcom/snowballfinance/messageplatform/b/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 2098
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/y;->g:[B

    .line 128
    :cond_0
    return-object v0
.end method

.method public static a(Lcom/snowballfinance/messageplatform/data/MessageSession;)Lcom/snowballfinance/messageplatform/a/y;
    .locals 2

    .prologue
    .line 177
    sget-object v0, Lcom/snowballfinance/messageplatform/a/v;->h:Lcom/snowballfinance/messageplatform/a/v;

    invoke-static {p0}, Lcom/snowballfinance/messageplatform/b/d;->a(Lcom/snowballfinance/messageplatform/data/MessageSession;)Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snowballfinance/messageplatform/a/y;->a(Lcom/snowballfinance/messageplatform/a/v;Ljava/lang/String;)Lcom/snowballfinance/messageplatform/a/y;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Long;)Lcom/snowballfinance/messageplatform/a/y;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 137
    const-string v1, "menuUserId"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v1, Lcom/snowballfinance/messageplatform/a/v;->b:Lcom/snowballfinance/messageplatform/a/v;

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/d;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/snowballfinance/messageplatform/a/y;->a(Lcom/snowballfinance/messageplatform/a/v;Ljava/lang/String;)Lcom/snowballfinance/messageplatform/a/y;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;)Lcom/snowballfinance/messageplatform/a/y;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 161
    const-string v1, "target"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v1, "group"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v1, "limit"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v1, "since"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v1, "until"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v1, Lcom/snowballfinance/messageplatform/a/v;->f:Lcom/snowballfinance/messageplatform/a/v;

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/d;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/snowballfinance/messageplatform/a/y;->a(Lcom/snowballfinance/messageplatform/a/v;Ljava/lang/String;)Lcom/snowballfinance/messageplatform/a/y;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Long;Ljava/lang/String;)Lcom/snowballfinance/messageplatform/a/y;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 143
    const-string v1, "menuUserId"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v1, "menuItemId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v1, Lcom/snowballfinance/messageplatform/a/v;->c:Lcom/snowballfinance/messageplatform/a/v;

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/d;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/snowballfinance/messageplatform/a/y;->a(Lcom/snowballfinance/messageplatform/a/v;Ljava/lang/String;)Lcom/snowballfinance/messageplatform/a/y;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;)Lcom/snowballfinance/messageplatform/a/y;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snowballfinance/messageplatform/data/Message;",
            ">;)",
            "Lcom/snowballfinance/messageplatform/a/y;"
        }
    .end annotation

    .prologue
    .line 156
    sget-object v0, Lcom/snowballfinance/messageplatform/a/v;->e:Lcom/snowballfinance/messageplatform/a/v;

    invoke-static {p0}, Lcom/snowballfinance/messageplatform/b/d;->a(Ljava/util/Collection;)Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snowballfinance/messageplatform/a/y;->a(Lcom/snowballfinance/messageplatform/a/v;Ljava/lang/String;)Lcom/snowballfinance/messageplatform/a/y;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)Lcom/snowballfinance/messageplatform/a/y;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/snowballfinance/messageplatform/a/y;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 171
    const-string v1, "mids"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v1, "deviceId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v1, Lcom/snowballfinance/messageplatform/a/v;->g:Lcom/snowballfinance/messageplatform/a/v;

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/d;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/snowballfinance/messageplatform/a/y;->a(Lcom/snowballfinance/messageplatform/a/v;Ljava/lang/String;)Lcom/snowballfinance/messageplatform/a/y;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;Z)Lcom/snowballfinance/messageplatform/a/y;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/snowballfinance/messageplatform/a/y;"
        }
    .end annotation

    .prologue
    .line 232
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 233
    const-string v1, "op"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v1, "symbols"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v1, "delay"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v1, Lcom/snowballfinance/messageplatform/a/v;->o:Lcom/snowballfinance/messageplatform/a/v;

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/d;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/snowballfinance/messageplatform/a/y;->a(Lcom/snowballfinance/messageplatform/a/v;Ljava/lang/String;)Lcom/snowballfinance/messageplatform/a/y;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request{userId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/a/y;->f:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/a/y;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endpoint=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/a/y;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accessToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/a/y;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1129
    iget-object v1, p0, Lcom/snowballfinance/messageplatform/a/a;->b:Ljava/lang/String;

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
