.class public final Lcom/snowballfinance/messageplatform/a/a/a;
.super Ljava/lang/Object;
.source "CommandDecoder.java"


# instance fields
.field protected final a:Lcom/snowballfinance/message/io/logger/Logger;

.field public b:Lcom/snowballfinance/messageplatform/a/a/d;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/snowballfinance/message/io/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/snowballfinance/message/io/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/snowballfinance/messageplatform/a/a/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    .line 30
    instance-of v0, p1, Lcom/snowballfinance/messageplatform/a/a/d;

    if-eqz v0, :cond_0

    .line 31
    check-cast p1, Lcom/snowballfinance/messageplatform/a/a/d;

    iput-object p1, p0, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    new-instance v0, Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-direct {v0, p1}, Lcom/snowballfinance/messageplatform/a/a/d;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    goto :goto_0
.end method


# virtual methods
.method public final a(ILjava/lang/String;I)Lcom/snowballfinance/messageplatform/a/e;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 257
    new-instance v1, Lcom/snowballfinance/messageplatform/a/e;

    invoke-direct {v1}, Lcom/snowballfinance/messageplatform/a/e;-><init>()V

    .line 258
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1125
    iput-object v2, v1, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 1133
    iput-object p2, v1, Lcom/snowballfinance/messageplatform/a/a;->b:Ljava/lang/String;

    .line 260
    iget-object v2, p0, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v2}, Lcom/snowballfinance/messageplatform/a/a/d;->a()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1462
    iput-object v0, v1, Lcom/snowballfinance/messageplatform/a/e;->c:Ljava/lang/Boolean;

    .line 261
    add-int/lit8 v0, p3, -0x1

    .line 262
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 263
    :goto_1
    if-lez v0, :cond_1

    .line 264
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    .line 2177
    iget v3, v3, Lcom/snowballfinance/messageplatform/a/a/d;->a:I

    .line 265
    iget-object v4, p0, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-static {v4}, Lcom/snowballfinance/messageplatform/data/Message;->decodeMessage(Lcom/snowballfinance/messageplatform/a/a/d;)Lcom/snowballfinance/messageplatform/data/Message;

    move-result-object v4

    .line 266
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v4, p0, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    .line 3177
    iget v4, v4, Lcom/snowballfinance/messageplatform/a/a/d;->a:I

    .line 267
    sub-int v3, v4, v3

    sub-int/2addr v0, v3

    .line 268
    goto :goto_1

    .line 260
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3470
    :cond_1
    iput-object v2, v1, Lcom/snowballfinance/messageplatform/a/e;->d:Ljava/util/List;

    .line 270
    return-object v1
.end method

.method public final b(ILjava/lang/String;I)Lcom/snowballfinance/messageplatform/a/f;
    .locals 6

    .prologue
    .line 275
    new-instance v0, Lcom/snowballfinance/messageplatform/a/f;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/f;-><init>()V

    .line 276
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 4125
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 4133
    iput-object p2, v0, Lcom/snowballfinance/messageplatform/a/a;->b:Ljava/lang/String;

    .line 278
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 279
    :goto_0
    if-lez p3, :cond_0

    .line 280
    iget-object v2, p0, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    .line 4177
    iget v2, v2, Lcom/snowballfinance/messageplatform/a/a/d;->a:I

    .line 281
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v3}, Lcom/snowballfinance/messageplatform/a/a/d;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 282
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    .line 5177
    iget v3, v3, Lcom/snowballfinance/messageplatform/a/a/d;->a:I

    .line 283
    sub-int v2, v3, v2

    sub-int/2addr p3, v2

    .line 284
    goto :goto_0

    .line 5427
    :cond_0
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/f;->c:Ljava/util/List;

    .line 286
    return-object v0
.end method

.method public final c(ILjava/lang/String;I)Lcom/snowballfinance/messageplatform/a/m;
    .locals 4

    .prologue
    .line 313
    new-instance v0, Lcom/snowballfinance/messageplatform/a/m;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/m;-><init>()V

    .line 314
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 6125
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 6133
    iput-object p2, v0, Lcom/snowballfinance/messageplatform/a/a;->b:Ljava/lang/String;

    .line 317
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 319
    :goto_0
    if-lez p3, :cond_0

    .line 320
    iget-object v2, p0, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    .line 6177
    iget v2, v2, Lcom/snowballfinance/messageplatform/a/a/d;->a:I

    .line 321
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-static {v3}, Lcom/snowballfinance/messageplatform/data/Message;->decodeMessage(Lcom/snowballfinance/messageplatform/a/a/d;)Lcom/snowballfinance/messageplatform/data/Message;

    move-result-object v3

    .line 322
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    .line 7177
    iget v3, v3, Lcom/snowballfinance/messageplatform/a/a/d;->a:I

    .line 323
    sub-int v2, v3, v2

    sub-int/2addr p3, v2

    .line 324
    goto :goto_0

    .line 7665
    :cond_0
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/m;->c:Ljava/util/List;

    .line 328
    return-object v0
.end method

.method public final d(ILjava/lang/String;I)Lcom/snowballfinance/messageplatform/a/k;
    .locals 4

    .prologue
    .line 341
    new-instance v0, Lcom/snowballfinance/messageplatform/a/k;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/k;-><init>()V

    .line 342
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 8125
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 8133
    iput-object p2, v0, Lcom/snowballfinance/messageplatform/a/a;->b:Ljava/lang/String;

    .line 345
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 347
    :goto_0
    if-lez p3, :cond_0

    .line 348
    iget-object v2, p0, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    .line 8177
    iget v2, v2, Lcom/snowballfinance/messageplatform/a/a/d;->a:I

    .line 349
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-static {v3}, Lcom/snowballfinance/messageplatform/data/MessageSession;->decodeMessageSession(Lcom/snowballfinance/messageplatform/a/a/d;)Lcom/snowballfinance/messageplatform/data/MessageSession;

    move-result-object v3

    .line 350
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    .line 9177
    iget v3, v3, Lcom/snowballfinance/messageplatform/a/a/d;->a:I

    .line 351
    sub-int v2, v3, v2

    sub-int/2addr p3, v2

    .line 352
    goto :goto_0

    .line 9748
    :cond_0
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/k;->c:Ljava/util/List;

    .line 356
    return-object v0
.end method

.method public final e(ILjava/lang/String;I)Lcom/snowballfinance/messageplatform/a/i;
    .locals 4

    .prologue
    .line 369
    new-instance v0, Lcom/snowballfinance/messageplatform/a/i;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/i;-><init>()V

    .line 370
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 10125
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 10133
    iput-object p2, v0, Lcom/snowballfinance/messageplatform/a/a;->b:Ljava/lang/String;

    .line 373
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 375
    :goto_0
    if-lez p3, :cond_0

    .line 376
    iget-object v2, p0, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    .line 10177
    iget v2, v2, Lcom/snowballfinance/messageplatform/a/a/d;->a:I

    .line 377
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-static {v3}, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->decodeMessageSessionExt(Lcom/snowballfinance/messageplatform/a/a/d;)Lcom/snowballfinance/messageplatform/data/MessageSessionExt;

    move-result-object v3

    .line 378
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    .line 11177
    iget v3, v3, Lcom/snowballfinance/messageplatform/a/a/d;->a:I

    .line 379
    sub-int v2, v3, v2

    sub-int/2addr p3, v2

    .line 380
    goto :goto_0

    .line 11773
    :cond_0
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/i;->c:Ljava/util/List;

    .line 384
    return-object v0
.end method
