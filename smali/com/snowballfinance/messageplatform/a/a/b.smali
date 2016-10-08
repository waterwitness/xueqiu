.class public Lcom/snowballfinance/messageplatform/a/a/b;
.super Ljava/lang/Object;
.source "CommandEncoder.java"


# static fields
.field static final synthetic c:Z


# instance fields
.field public a:Lcom/snowballfinance/messageplatform/a/a/e;

.field public b:Lcom/snowballfinance/messageplatform/a/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/snowballfinance/messageplatform/a/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/snowballfinance/messageplatform/a/a/b;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/snowballfinance/messageplatform/a/a/e;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/a/e;-><init>()V

    iput-object v0, p0, Lcom/snowballfinance/messageplatform/a/a/b;->a:Lcom/snowballfinance/messageplatform/a/a/e;

    .line 27
    new-instance v0, Lcom/snowballfinance/messageplatform/a/a/e;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/a/e;-><init>()V

    iput-object v0, p0, Lcom/snowballfinance/messageplatform/a/a/b;->b:Lcom/snowballfinance/messageplatform/a/a/e;

    return-void
.end method

.method public static a(Lcom/snowballfinance/messageplatform/a/a;ILcom/snowballfinance/messageplatform/a/a/e;)V
    .locals 2

    .prologue
    .line 39
    sget-boolean v0, Lcom/snowballfinance/messageplatform/a/a/b;->c:Z

    if-nez v0, :cond_0

    .line 1091
    invoke-static {p0}, Lcom/snowballfinance/messageplatform/a/s;->a(Lcom/snowballfinance/messageplatform/a/a;)Lcom/snowballfinance/messageplatform/a/s;

    move-result-object v0

    .line 39
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 40
    :cond_0
    sget-boolean v0, Lcom/snowballfinance/messageplatform/a/a/b;->c:Z

    if-nez v0, :cond_1

    .line 1129
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/a;->b:Ljava/lang/String;

    .line 40
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2091
    :cond_1
    invoke-static {p0}, Lcom/snowballfinance/messageplatform/a/s;->a(Lcom/snowballfinance/messageplatform/a/a;)Lcom/snowballfinance/messageplatform/a/s;

    move-result-object v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    new-instance v0, Lcom/snowballfinance/messageplatform/a/a/c;

    const-string v1, "unknown command type"

    invoke-direct {v0, v1}, Lcom/snowballfinance/messageplatform/a/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_2
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/a/s;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->a(I)V

    .line 2121
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 51
    if-eqz v0, :cond_3

    .line 3121
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 51
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->b(I)V

    .line 3129
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/a;->b:Ljava/lang/String;

    .line 54
    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 55
    array-length v1, v0

    invoke-virtual {p2, v1}, Lcom/snowballfinance/messageplatform/a/a/e;->d(I)V

    .line 56
    invoke-virtual {p2, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->write([B)V

    .line 60
    invoke-virtual {p2, p1}, Lcom/snowballfinance/messageplatform/a/a/e;->d(I)V

    .line 61
    return-void

    .line 51
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/snowballfinance/messageplatform/a/b;Lcom/snowballfinance/messageplatform/a/a/e;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 171
    sget-boolean v0, Lcom/snowballfinance/messageplatform/a/a/b;->c:Z

    if-nez v0, :cond_0

    .line 22193
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/b;->c:Ljava/lang/Long;

    .line 171
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 172
    :cond_0
    sget-boolean v0, Lcom/snowballfinance/messageplatform/a/a/b;->c:Z

    if-nez v0, :cond_1

    .line 22201
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/b;->d:Ljava/lang/String;

    .line 172
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 23193
    :cond_1
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/b;->c:Ljava/lang/Long;

    .line 174
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/snowballfinance/messageplatform/a/a/e;->a(J)V

    .line 23201
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/b;->d:Ljava/lang/String;

    .line 175
    invoke-virtual {p1, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Ljava/lang/String;)V

    .line 23217
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/b;->f:Ljava/lang/String;

    .line 177
    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 24209
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/a/b;->e:Ljava/lang/String;

    .line 178
    if-eqz v3, :cond_5

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 180
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Z)V

    .line 181
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Z)V

    .line 182
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/a/a/e;->a()V

    .line 184
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 25209
    iget-object v1, p0, Lcom/snowballfinance/messageplatform/a/b;->e:Ljava/lang/String;

    .line 185
    invoke-virtual {p1, v1}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Ljava/lang/String;)V

    .line 188
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 25217
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/b;->f:Ljava/lang/String;

    .line 189
    invoke-virtual {p1, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Ljava/lang/String;)V

    .line 191
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 177
    goto :goto_0

    :cond_5
    move v1, v2

    .line 178
    goto :goto_1
.end method

.method public static a(Lcom/snowballfinance/messageplatform/a/c;Lcom/snowballfinance/messageplatform/a/a/e;)V
    .locals 2

    .prologue
    .line 198
    sget-boolean v0, Lcom/snowballfinance/messageplatform/a/a/b;->c:Z

    if-nez v0, :cond_0

    .line 27248
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/c;->c:Ljava/lang/Long;

    .line 198
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 28248
    :cond_0
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/c;->c:Ljava/lang/Long;

    .line 200
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/snowballfinance/messageplatform/a/a/e;->a(J)V

    .line 28256
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/c;->d:Ljava/lang/Boolean;

    .line 201
    if-eqz v0, :cond_1

    .line 29256
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/c;->d:Ljava/lang/Boolean;

    .line 201
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->a(I)V

    .line 202
    return-void

    .line 201
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/snowballfinance/messageplatform/a/d;Lcom/snowballfinance/messageplatform/a/a/e;)V
    .locals 2

    .prologue
    .line 157
    sget-boolean v0, Lcom/snowballfinance/messageplatform/a/a/b;->c:Z

    if-nez v0, :cond_0

    .line 18501
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/d;->c:Ljava/lang/Long;

    .line 157
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 158
    :cond_0
    sget-boolean v0, Lcom/snowballfinance/messageplatform/a/a/b;->c:Z

    if-nez v0, :cond_1

    .line 18509
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/d;->d:Ljava/lang/Long;

    .line 158
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 19501
    :cond_1
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/d;->c:Ljava/lang/Long;

    .line 160
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/snowballfinance/messageplatform/a/a/e;->a(J)V

    .line 19509
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/d;->d:Ljava/lang/Long;

    .line 161
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/snowballfinance/messageplatform/a/a/e;->a(J)V

    .line 19517
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/d;->e:Ljava/lang/Boolean;

    .line 162
    if-eqz v0, :cond_2

    .line 20517
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/d;->e:Ljava/lang/Boolean;

    .line 162
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->a(I)V

    .line 163
    return-void

    .line 162
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/snowballfinance/messageplatform/a/e;Lcom/snowballfinance/messageplatform/a/a/e;)V
    .locals 2

    .prologue
    .line 223
    .line 33458
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/e;->c:Ljava/lang/Boolean;

    .line 223
    if-eqz v0, :cond_0

    .line 34458
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/e;->c:Ljava/lang/Boolean;

    .line 223
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->a(I)V

    .line 34466
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/e;->d:Ljava/util/List;

    .line 225
    if-eqz v0, :cond_1

    .line 226
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snowballfinance/messageplatform/data/Message;

    .line 227
    invoke-virtual {v0, p1}, Lcom/snowballfinance/messageplatform/data/Message;->encodeMessage(Lcom/snowballfinance/messageplatform/a/a/e;)V

    goto :goto_1

    .line 223
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 230
    :cond_1
    return-void
.end method

.method public static a(Lcom/snowballfinance/messageplatform/a/f;Lcom/snowballfinance/messageplatform/a/a/e;)V
    .locals 4

    .prologue
    .line 234
    .line 35423
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/f;->c:Ljava/util/List;

    .line 235
    sget-boolean v1, Lcom/snowballfinance/messageplatform/a/a/b;->c:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 236
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 237
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/snowballfinance/messageplatform/a/a/e;->a(J)V

    goto :goto_0

    .line 239
    :cond_1
    return-void
.end method

.method public static a(Lcom/snowballfinance/messageplatform/a/g;Lcom/snowballfinance/messageplatform/a/a/e;)V
    .locals 2

    .prologue
    .line 194
    .line 25281
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/g;->c:Ljava/lang/Long;

    .line 194
    if-eqz v0, :cond_0

    .line 26281
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/g;->c:Ljava/lang/Long;

    .line 194
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/snowballfinance/messageplatform/a/a/e;->a(J)V

    .line 195
    return-void

    .line 194
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/snowballfinance/messageplatform/a/h;Lcom/snowballfinance/messageplatform/a/a/e;)V
    .locals 2

    .prologue
    .line 284
    sget-boolean v0, Lcom/snowballfinance/messageplatform/a/a/b;->c:Z

    if-nez v0, :cond_0

    .line 45720
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/h;->c:Ljava/lang/Long;

    .line 284
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 46720
    :cond_0
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/h;->c:Ljava/lang/Long;

    .line 285
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/snowballfinance/messageplatform/a/a/e;->a(J)V

    .line 286
    return-void
.end method

.method public static a(Lcom/snowballfinance/messageplatform/a/i;Lcom/snowballfinance/messageplatform/a/a/e;)V
    .locals 2

    .prologue
    .line 289
    .line 46769
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/i;->c:Ljava/util/List;

    .line 290
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;

    .line 291
    invoke-virtual {v0, p1}, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->encodeMessageSessionExt(Lcom/snowballfinance/messageplatform/a/a/e;)V

    goto :goto_0

    .line 293
    :cond_0
    return-void
.end method

.method public static a(Lcom/snowballfinance/messageplatform/a/j;Lcom/snowballfinance/messageplatform/a/a/e;)V
    .locals 2

    .prologue
    .line 271
    sget-boolean v0, Lcom/snowballfinance/messageplatform/a/a/b;->c:Z

    if-nez v0, :cond_0

    .line 43694
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/j;->c:Ljava/lang/Long;

    .line 271
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44694
    :cond_0
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/j;->c:Ljava/lang/Long;

    .line 272
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/snowballfinance/messageplatform/a/a/e;->a(J)V

    .line 273
    return-void
.end method

.method public static a(Lcom/snowballfinance/messageplatform/a/k;Lcom/snowballfinance/messageplatform/a/a/e;)V
    .locals 2

    .prologue
    .line 276
    .line 44744
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/k;->c:Ljava/util/List;

    .line 277
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snowballfinance/messageplatform/data/MessageSession;

    .line 278
    invoke-virtual {v0, p1}, Lcom/snowballfinance/messageplatform/data/MessageSession;->encodeMessageSession(Lcom/snowballfinance/messageplatform/a/a/e;)V

    goto :goto_0

    .line 280
    :cond_0
    return-void
.end method

.method public static a(Lcom/snowballfinance/messageplatform/a/l;Lcom/snowballfinance/messageplatform/a/a/e;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 242
    sget-boolean v0, Lcom/snowballfinance/messageplatform/a/a/b;->c:Z

    if-nez v0, :cond_0

    .line 35605
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/l;->c:Ljava/lang/Long;

    .line 242
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 243
    :cond_0
    sget-boolean v0, Lcom/snowballfinance/messageplatform/a/a/b;->c:Z

    if-nez v0, :cond_1

    .line 35613
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/l;->d:Ljava/lang/Long;

    .line 243
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 36605
    :cond_1
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/l;->c:Ljava/lang/Long;

    .line 245
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/snowballfinance/messageplatform/a/a/e;->a(J)V

    .line 36613
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/l;->d:Ljava/lang/Long;

    .line 246
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/snowballfinance/messageplatform/a/a/e;->a(J)V

    .line 36637
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/l;->e:Ljava/lang/Boolean;

    .line 247
    if-eqz v0, :cond_5

    .line 37637
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/l;->e:Ljava/lang/Boolean;

    .line 247
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->a(I)V

    .line 38621
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/l;->f:Ljava/lang/Long;

    .line 248
    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Z)V

    .line 38629
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/l;->g:Ljava/lang/Long;

    .line 249
    if-eqz v0, :cond_7

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Z)V

    .line 39597
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/l;->h:Ljava/lang/Integer;

    .line 250
    if-eqz v0, :cond_8

    :goto_3
    invoke-virtual {p1, v1}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Z)V

    .line 251
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/a/a/e;->a()V

    .line 39621
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/l;->f:Ljava/lang/Long;

    .line 252
    if-eqz v0, :cond_2

    .line 40621
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/l;->f:Ljava/lang/Long;

    .line 253
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/snowballfinance/messageplatform/a/a/e;->a(J)V

    .line 40629
    :cond_2
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/l;->g:Ljava/lang/Long;

    .line 255
    if-eqz v0, :cond_3

    .line 41629
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/l;->g:Ljava/lang/Long;

    .line 256
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/snowballfinance/messageplatform/a/a/e;->a(J)V

    .line 42597
    :cond_3
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/l;->h:Ljava/lang/Integer;

    .line 258
    if-eqz v0, :cond_4

    .line 43597
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/l;->h:Ljava/lang/Integer;

    .line 259
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->b(I)V

    .line 261
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 247
    goto :goto_0

    :cond_6
    move v0, v2

    .line 248
    goto :goto_1

    :cond_7
    move v0, v2

    .line 249
    goto :goto_2

    :cond_8
    move v1, v2

    .line 250
    goto :goto_3
.end method

.method public static a(Lcom/snowballfinance/messageplatform/a/m;Lcom/snowballfinance/messageplatform/a/a/e;)V
    .locals 2

    .prologue
    .line 264
    .line 43661
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/m;->c:Ljava/util/List;

    .line 265
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snowballfinance/messageplatform/data/Message;

    .line 266
    invoke-virtual {v0, p1}, Lcom/snowballfinance/messageplatform/data/Message;->encodeMessage(Lcom/snowballfinance/messageplatform/a/a/e;)V

    goto :goto_0

    .line 268
    :cond_0
    return-void
.end method

.method public static a(Lcom/snowballfinance/messageplatform/a/n;Lcom/snowballfinance/messageplatform/a/a/e;)V
    .locals 2

    .prologue
    .line 119
    .line 4847
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/n;->c:Ljava/lang/Long;

    .line 119
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/snowballfinance/messageplatform/a/a/e;->a(J)V

    .line 120
    return-void
.end method

.method public static a(Lcom/snowballfinance/messageplatform/a/o;Lcom/snowballfinance/messageplatform/a/a/e;)V
    .locals 2

    .prologue
    .line 112
    .line 3797
    iget v0, p0, Lcom/snowballfinance/messageplatform/a/o;->d:I

    .line 112
    invoke-virtual {p1, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->c(I)V

    .line 4786
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/o;->c:Ljava/util/List;

    .line 113
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    invoke-virtual {p1, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method

.method public static a(Lcom/snowballfinance/messageplatform/a/q;Lcom/snowballfinance/messageplatform/a/a/e;)V
    .locals 2

    .prologue
    .line 214
    sget-boolean v0, Lcom/snowballfinance/messageplatform/a/a/b;->c:Z

    if-nez v0, :cond_0

    .line 31379
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/q;->c:Ljava/lang/Long;

    .line 214
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 215
    :cond_0
    sget-boolean v0, Lcom/snowballfinance/messageplatform/a/a/b;->c:Z

    if-nez v0, :cond_1

    .line 31387
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/q;->d:Ljava/lang/Long;

    .line 215
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 32379
    :cond_1
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/q;->c:Ljava/lang/Long;

    .line 217
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/snowballfinance/messageplatform/a/a/e;->a(J)V

    .line 32387
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/q;->d:Ljava/lang/Long;

    .line 218
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/snowballfinance/messageplatform/a/a/e;->a(J)V

    .line 32395
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/q;->e:Ljava/lang/Boolean;

    .line 219
    if-eqz v0, :cond_2

    .line 33395
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/q;->e:Ljava/lang/Boolean;

    .line 219
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->a(I)V

    .line 220
    return-void

    .line 219
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/snowballfinance/messageplatform/a/t;Lcom/snowballfinance/messageplatform/a/a/e;)V
    .locals 2

    .prologue
    .line 205
    sget-boolean v0, Lcom/snowballfinance/messageplatform/a/a/b;->c:Z

    if-nez v0, :cond_0

    .line 29328
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/t;->c:Ljava/lang/Long;

    .line 205
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 206
    :cond_0
    sget-boolean v0, Lcom/snowballfinance/messageplatform/a/a/b;->c:Z

    if-nez v0, :cond_1

    .line 29336
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/t;->d:Ljava/lang/Long;

    .line 206
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 30328
    :cond_1
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/t;->c:Ljava/lang/Long;

    .line 208
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/snowballfinance/messageplatform/a/a/e;->a(J)V

    .line 30336
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/t;->d:Ljava/lang/Long;

    .line 209
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/snowballfinance/messageplatform/a/a/e;->a(J)V

    .line 30344
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/t;->e:Ljava/lang/Boolean;

    .line 210
    if-eqz v0, :cond_2

    .line 31344
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/t;->e:Ljava/lang/Boolean;

    .line 210
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->a(I)V

    .line 211
    return-void

    .line 210
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/snowballfinance/messageplatform/a/u;Lcom/snowballfinance/messageplatform/a/a/e;)V
    .locals 1

    .prologue
    .line 166
    sget-boolean v0, Lcom/snowballfinance/messageplatform/a/a/b;->c:Z

    if-nez v0, :cond_0

    .line 20542
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/u;->c:Lcom/snowballfinance/messageplatform/data/MessageSession;

    .line 166
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 21542
    :cond_0
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/u;->c:Lcom/snowballfinance/messageplatform/data/MessageSession;

    .line 167
    invoke-virtual {v0, p1}, Lcom/snowballfinance/messageplatform/data/MessageSession;->encodeMessageSession(Lcom/snowballfinance/messageplatform/a/a/e;)V

    .line 168
    return-void
.end method

.method public static a(Lcom/snowballfinance/messageplatform/a/w;Lcom/snowballfinance/messageplatform/a/a/e;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 145
    .line 15051
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/w;->d:[B

    .line 145
    if-eqz v0, :cond_0

    .line 16051
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/w;->d:[B

    .line 17043
    :goto_0
    iget-object v1, p0, Lcom/snowballfinance/messageplatform/a/w;->e:[B

    .line 146
    if-eqz v1, :cond_1

    .line 18043
    iget-object v1, p0, Lcom/snowballfinance/messageplatform/a/w;->e:[B

    .line 147
    :goto_1
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/snowballfinance/messageplatform/a/a/e;->c(I)V

    .line 18059
    iget v2, p0, Lcom/snowballfinance/messageplatform/a/w;->f:I

    .line 148
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Lcom/snowballfinance/messageplatform/a/a/e;->c(I)V

    .line 149
    invoke-virtual {p1, v1}, Lcom/snowballfinance/messageplatform/a/a/e;->a([B)V

    .line 150
    invoke-virtual {p1, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->a([B)V

    .line 151
    return-void

    .line 145
    :cond_0
    new-array v0, v2, [B

    goto :goto_0

    .line 146
    :cond_1
    new-array v1, v2, [B

    goto :goto_1
.end method

.method public static a(Lcom/snowballfinance/messageplatform/a/y;Lcom/snowballfinance/messageplatform/a/a/e;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 124
    .line 5094
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/y;->g:[B

    .line 124
    if-eqz v0, :cond_0

    .line 6094
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/y;->g:[B

    .line 7086
    :goto_0
    iget-object v1, p0, Lcom/snowballfinance/messageplatform/a/y;->h:[B

    .line 125
    if-eqz v1, :cond_1

    .line 8086
    iget-object v1, p0, Lcom/snowballfinance/messageplatform/a/y;->h:[B

    .line 126
    :goto_1
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/snowballfinance/messageplatform/a/a/e;->c(I)V

    .line 9078
    iget-object v2, p0, Lcom/snowballfinance/messageplatform/a/y;->f:Ljava/lang/Long;

    .line 127
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/snowballfinance/messageplatform/a/a/e;->a(J)V

    .line 10070
    iget-object v2, p0, Lcom/snowballfinance/messageplatform/a/y;->e:Ljava/lang/String;

    .line 128
    invoke-virtual {p1, v2}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Ljava/lang/String;)V

    .line 11062
    iget-object v2, p0, Lcom/snowballfinance/messageplatform/a/y;->d:Ljava/lang/String;

    .line 129
    invoke-virtual {p1, v2}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1, v1}, Lcom/snowballfinance/messageplatform/a/a/e;->a([B)V

    .line 131
    invoke-virtual {p1, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->a([B)V

    .line 132
    return-void

    .line 124
    :cond_0
    new-array v0, v2, [B

    goto :goto_0

    .line 125
    :cond_1
    new-array v1, v2, [B

    goto :goto_1
.end method

.method public static a(Lcom/snowballfinance/messageplatform/a/z;Lcom/snowballfinance/messageplatform/a/a/e;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 135
    .line 11082
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/z;->f:[B

    .line 135
    if-eqz v0, :cond_0

    .line 12082
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/z;->f:[B

    .line 13046
    :goto_0
    iget-object v1, p0, Lcom/snowballfinance/messageplatform/a/z;->g:[B

    .line 136
    if-eqz v1, :cond_1

    .line 14046
    iget-object v1, p0, Lcom/snowballfinance/messageplatform/a/z;->g:[B

    .line 137
    :goto_1
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/snowballfinance/messageplatform/a/a/e;->c(I)V

    .line 14058
    iget-object v2, p0, Lcom/snowballfinance/messageplatform/a/z;->d:Ljava/lang/String;

    .line 138
    invoke-virtual {p1, v2}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Ljava/lang/String;)V

    .line 14074
    iget-object v2, p0, Lcom/snowballfinance/messageplatform/a/z;->e:Ljava/lang/Integer;

    .line 139
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/snowballfinance/messageplatform/a/a/e;->b(I)V

    .line 140
    invoke-virtual {p1, v1}, Lcom/snowballfinance/messageplatform/a/a/e;->a([B)V

    .line 141
    invoke-virtual {p1, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->a([B)V

    .line 142
    return-void

    .line 135
    :cond_0
    new-array v0, v2, [B

    goto :goto_0

    .line 136
    :cond_1
    new-array v1, v2, [B

    goto :goto_1
.end method
