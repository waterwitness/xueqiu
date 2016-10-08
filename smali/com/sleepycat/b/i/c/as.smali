.class public abstract Lcom/sleepycat/b/i/c/as;
.super Ljava/lang/Object;
.source "TextProtocol.java"

# interfaces
.implements Lcom/sleepycat/b/i/c/bc;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[Ljava/lang/String;

.field private c:I

.field public h:I

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public final synthetic k:Lcom/sleepycat/b/i/c/ap;


# direct methods
.method protected constructor <init>(Lcom/sleepycat/b/i/c/ap;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 351
    iput-object p1, p0, Lcom/sleepycat/b/i/c/as;->k:Lcom/sleepycat/b/i/c/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/b/i/c/as;->h:I

    .line 343
    sget v0, Lcom/sleepycat/b/i/c/bb;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sleepycat/b/i/c/as;->c:I

    .line 352
    iput-object v1, p0, Lcom/sleepycat/b/i/c/as;->a:Ljava/lang/String;

    .line 353
    iput-object v1, p0, Lcom/sleepycat/b/i/c/as;->b:[Ljava/lang/String;

    .line 354
    invoke-static {p1}, Lcom/sleepycat/b/i/c/ap;->a(Lcom/sleepycat/b/i/c/ap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/c/as;->a(Ljava/lang/String;)V

    .line 355
    return-void
.end method


# virtual methods
.method public abstract a()Lcom/sleepycat/b/i/c/av;
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 423
    new-instance v0, Ljava/lang/Double;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/as;->k:Lcom/sleepycat/b/i/c/ap;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/ap;->a(Lcom/sleepycat/b/i/c/ap;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, p1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 424
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Send version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " shouldn\'t be larger than the current version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/c/as;->k:Lcom/sleepycat/b/i/c/ap;

    invoke-static {v2}, Lcom/sleepycat/b/i/c/ap;->a(Lcom/sleepycat/b/i/c/ap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/as;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 430
    iput-object p1, p0, Lcom/sleepycat/b/i/c/as;->i:Ljava/lang/String;

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sleepycat/b/i/c/as;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/as;->k:Lcom/sleepycat/b/i/c/ap;

    iget-object v1, v1, Lcom/sleepycat/b/i/c/ap;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/as;->j:Ljava/lang/String;

    .line 434
    :cond_1
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sleepycat/b/i/c/as;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/as;->k:Lcom/sleepycat/b/i/c/ap;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/ap;->b(Lcom/sleepycat/b/i/c/ap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/as;->k:Lcom/sleepycat/b/i/c/ap;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/ap;->c(Lcom/sleepycat/b/i/c/ap;)Lcom/sleepycat/b/i/c/b/x;

    move-result-object v1

    .line 1099
    iget v1, v1, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 442
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
