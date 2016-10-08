.class public Lcom/sleepycat/b/i/c/b/x;
.super Ljava/lang/Object;
.source "NameIdPair.java"


# static fields
.field public static final c:Lcom/sleepycat/b/i/c/b/x;

.field public static final d:Lcom/sleepycat/b/i/c/b/x;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lcom/sleepycat/b/i/c/b/y;

    const-string v1, "NullNode"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/c/b/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/i/c/b/x;->c:Lcom/sleepycat/b/i/c/b/x;

    .line 35
    new-instance v0, Lcom/sleepycat/b/i/c/b/y;

    const-string v1, "NoCheckNode"

    const/high16 v2, -0x80000000

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/c/b/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/i/c/b/x;->d:Lcom/sleepycat/b/i/c/b/x;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/sleepycat/b/i/c/b/x;->c:Lcom/sleepycat/b/i/c/b/x;

    .line 1099
    iget v0, v0, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/sleepycat/b/i/c/b/x;-><init>(Ljava/lang/String;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    const-string v0, "name argument was null"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 44
    iput p2, p0, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 45
    return-void
.end method

.method public static a(Lcom/sleepycat/a/a/l;)Lcom/sleepycat/b/i/c/b/x;
    .locals 3

    .prologue
    .line 63
    new-instance v0, Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {p0}, Lcom/sleepycat/a/a/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sleepycat/a/a/l;->d()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/c/b/x;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 107
    iget v0, p0, Lcom/sleepycat/b/i/c/b/x;->b:I

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/b/x;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Id was already not null: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sleepycat/b/i/c/b/x;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 111
    :cond_0
    iput p1, p0, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 112
    return-void
.end method

.method public final a(Lcom/sleepycat/b/i/c/b/x;)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 2087
    iget-object v1, p1, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pair name mismatch: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3087
    iget-object v1, p1, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 3099
    :cond_0
    iget v0, p1, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 123
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/c/b/x;->a(I)V

    .line 124
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 103
    iget v0, p0, Lcom/sleepycat/b/i/c/b/x;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 137
    if-ne p0, p1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 141
    goto :goto_0

    .line 143
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 144
    goto :goto_0

    .line 146
    :cond_3
    check-cast p1, Lcom/sleepycat/b/i/c/b/x;

    .line 147
    iget v2, p0, Lcom/sleepycat/b/i/c/b/x;->b:I

    iget v3, p1, Lcom/sleepycat/b/i/c/b/x;->b:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 148
    goto :goto_0

    .line 150
    :cond_4
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ids: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sleepycat/b/i/c/b/x;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " were equal. But names: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " weren\'t!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 130
    iget v0, p0, Lcom/sleepycat/b/i/c/b/x;->b:I

    add-int/lit8 v0, v0, 0x1f

    .line 131
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 132
    return v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/b/i/c/b/x;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
