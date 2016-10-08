.class public Lcom/flurry/sdk/in$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lb",
        "<",
        "Lcom/flurry/sdk/in;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/flurry/sdk/la;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/la",
            "<",
            "Lcom/flurry/sdk/ij;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Lcom/flurry/sdk/la;

    new-instance v1, Lcom/flurry/sdk/ij$a;

    invoke-direct {v1}, Lcom/flurry/sdk/ij$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/la;-><init>(Lcom/flurry/sdk/lb;)V

    iput-object v0, p0, Lcom/flurry/sdk/in$a;->a:Lcom/flurry/sdk/la;

    .line 129
    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lcom/flurry/sdk/in;
    .locals 14

    .prologue
    const/4 v9, 0x0

    .line 170
    if-nez p1, :cond_0

    .line 210
    :goto_0
    return-object v9

    .line 174
    :cond_0
    new-instance v0, Lcom/flurry/sdk/in$a$2;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/in$a$2;-><init>(Lcom/flurry/sdk/in$a;Ljava/io/InputStream;)V

    .line 181
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    .line 182
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v10

    .line 183
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    .line 184
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/flurry/sdk/ir;->a(I)Lcom/flurry/sdk/ir;

    move-result-object v8

    .line 185
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    .line 186
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 187
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 189
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 192
    new-instance v1, Lcom/flurry/sdk/in;

    invoke-direct/range {v1 .. v9}, Lcom/flurry/sdk/in;-><init>(Ljava/lang/String;ZJJLcom/flurry/sdk/ir;Ljava/util/Map;)V

    .line 194
    invoke-static {v1, v10, v11}, Lcom/flurry/sdk/in;->a(Lcom/flurry/sdk/in;J)J

    .line 195
    invoke-static {v1, v12}, Lcom/flurry/sdk/in;->a(Lcom/flurry/sdk/in;I)I

    .line 196
    invoke-static {v1, v13}, Lcom/flurry/sdk/in;->b(Lcom/flurry/sdk/in;I)I

    .line 197
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-static {v1, v2}, Lcom/flurry/sdk/in;->a(Lcom/flurry/sdk/in;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 199
    iget-object v0, p0, Lcom/flurry/sdk/in$a;->a:Lcom/flurry/sdk/la;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/la;->a(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_1

    .line 202
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v2}, Lcom/flurry/sdk/in;->a(Lcom/flurry/sdk/in;Ljava/util/Map;)Ljava/util/Map;

    .line 204
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ij;

    .line 205
    iput-object v1, v0, Lcom/flurry/sdk/ij;->b:Lcom/flurry/sdk/in;

    .line 206
    invoke-static {v1}, Lcom/flurry/sdk/in;->j(Lcom/flurry/sdk/in;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0}, Lcom/flurry/sdk/ij;->e()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v9, v1

    .line 210
    goto :goto_0
.end method

.method public a(Ljava/io/OutputStream;Lcom/flurry/sdk/in;)V
    .locals 4

    .prologue
    .line 133
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    new-instance v0, Lcom/flurry/sdk/in$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/in$a$1;-><init>(Lcom/flurry/sdk/in$a;Ljava/io/OutputStream;)V

    .line 145
    invoke-static {p2}, Lcom/flurry/sdk/in;->a(Lcom/flurry/sdk/in;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 146
    invoke-static {p2}, Lcom/flurry/sdk/in;->b(Lcom/flurry/sdk/in;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 147
    invoke-static {p2}, Lcom/flurry/sdk/in;->c(Lcom/flurry/sdk/in;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 148
    invoke-static {p2}, Lcom/flurry/sdk/in;->d(Lcom/flurry/sdk/in;)Lcom/flurry/sdk/ir;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/ir;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 149
    invoke-static {p2}, Lcom/flurry/sdk/in;->e(Lcom/flurry/sdk/in;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 150
    invoke-static {p2}, Lcom/flurry/sdk/in;->f(Lcom/flurry/sdk/in;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 152
    invoke-static {p2}, Lcom/flurry/sdk/in;->g(Lcom/flurry/sdk/in;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 153
    invoke-static {p2}, Lcom/flurry/sdk/in;->g(Lcom/flurry/sdk/in;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 160
    :goto_1
    invoke-static {p2}, Lcom/flurry/sdk/in;->h(Lcom/flurry/sdk/in;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 161
    invoke-static {p2}, Lcom/flurry/sdk/in;->i(Lcom/flurry/sdk/in;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 163
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 165
    iget-object v0, p0, Lcom/flurry/sdk/in$a;->a:Lcom/flurry/sdk/la;

    invoke-virtual {p2}, Lcom/flurry/sdk/in;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/flurry/sdk/la;->a(Ljava/io/OutputStream;Ljava/util/List;)V

    goto :goto_0

    .line 156
    :cond_2
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public bridge synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 124
    check-cast p2, Lcom/flurry/sdk/in;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/in$a;->a(Ljava/io/OutputStream;Lcom/flurry/sdk/in;)V

    return-void
.end method

.method public synthetic b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/in$a;->a(Ljava/io/InputStream;)Lcom/flurry/sdk/in;

    move-result-object v0

    return-object v0
.end method
