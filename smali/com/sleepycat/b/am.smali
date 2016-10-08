.class public final Lcom/sleepycat/b/am;
.super Ljava/lang/Object;
.source "JEVersion.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sleepycat/b/am;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/sleepycat/b/am;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/sleepycat/b/am;

    invoke-direct {v0}, Lcom/sleepycat/b/am;-><init>()V

    sput-object v0, Lcom/sleepycat/b/am;->a:Lcom/sleepycat/b/am;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x5

    iput v0, p0, Lcom/sleepycat/b/am;->b:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/b/am;->c:I

    .line 35
    const/16 v0, 0x68

    iput v0, p0, Lcom/sleepycat/b/am;->d:I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/am;->e:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/am;)I
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    .line 120
    const/4 v1, 0x0

    .line 122
    iget v3, p0, Lcom/sleepycat/b/am;->b:I

    .line 1063
    iget v4, p1, Lcom/sleepycat/b/am;->b:I

    .line 122
    if-ne v3, v4, :cond_4

    .line 123
    iget v3, p0, Lcom/sleepycat/b/am;->c:I

    .line 1072
    iget v4, p1, Lcom/sleepycat/b/am;->c:I

    .line 123
    if-ne v3, v4, :cond_3

    .line 124
    iget v3, p0, Lcom/sleepycat/b/am;->d:I

    .line 1081
    iget v4, p1, Lcom/sleepycat/b/am;->d:I

    .line 124
    if-le v3, v4, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    iget v0, p0, Lcom/sleepycat/b/am;->d:I

    .line 2081
    iget v3, p1, Lcom/sleepycat/b/am;->d:I

    .line 126
    if-ge v0, v3, :cond_5

    :cond_2
    move v0, v2

    .line 137
    goto :goto_0

    .line 129
    :cond_3
    iget v1, p0, Lcom/sleepycat/b/am;->c:I

    .line 3072
    iget v3, p1, Lcom/sleepycat/b/am;->c:I

    .line 129
    if-gt v1, v3, :cond_0

    move v0, v2

    .line 132
    goto :goto_0

    .line 134
    :cond_4
    iget v1, p0, Lcom/sleepycat/b/am;->b:I

    .line 4063
    iget v3, p1, Lcom/sleepycat/b/am;->b:I

    .line 134
    if-le v1, v3, :cond_2

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    iget v1, p0, Lcom/sleepycat/b/am;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget v1, p0, Lcom/sleepycat/b/am;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget v1, p0, Lcom/sleepycat/b/am;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    iget-object v1, p0, Lcom/sleepycat/b/am;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 108
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v1, p0, Lcom/sleepycat/b/am;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lcom/sleepycat/b/am;

    invoke-virtual {p0, p1}, Lcom/sleepycat/b/am;->a(Lcom/sleepycat/b/am;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 149
    instance-of v0, p1, Lcom/sleepycat/b/am;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sleepycat/b/am;

    invoke-virtual {p0, p1}, Lcom/sleepycat/b/am;->a(Lcom/sleepycat/b/am;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 155
    iget v0, p0, Lcom/sleepycat/b/am;->b:I

    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcom/sleepycat/b/am;->c:I

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sleepycat/b/am;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/sleepycat/b/am;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
