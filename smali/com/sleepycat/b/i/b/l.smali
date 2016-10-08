.class public final Lcom/sleepycat/b/i/b/l;
.super Lcom/sleepycat/b/i/b/ah;
.source "MasterValue.java"


# static fields
.field private static final e:Lcom/sleepycat/b/i/b/aj;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Lcom/sleepycat/b/i/c/b/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/sleepycat/b/i/b/l$1;

    invoke-direct {v0}, Lcom/sleepycat/b/i/b/l$1;-><init>()V

    sput-object v0, Lcom/sleepycat/b/i/b/l;->e:Lcom/sleepycat/b/i/b/aj;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/sleepycat/b/i/c/b/x;)V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$$$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$$$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1087
    iget-object v1, p3, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$$$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1099
    iget v1, p3, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sleepycat/b/i/b/ah;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/sleepycat/b/i/b/l;->a:Ljava/lang/String;

    .line 34
    iput p2, p0, Lcom/sleepycat/b/i/b/l;->b:I

    .line 35
    iput-object p3, p0, Lcom/sleepycat/b/i/b/l;->c:Lcom/sleepycat/b/i/c/b/x;

    .line 36
    return-void
.end method

.method public static a()Lcom/sleepycat/b/i/b/aj;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/sleepycat/b/i/b/l;->e:Lcom/sleepycat/b/i/b/aj;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 93
    if-ne p0, p1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 96
    :cond_1
    invoke-super {p0, p1}, Lcom/sleepycat/b/i/b/ah;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 97
    goto :goto_0

    .line 99
    :cond_2
    instance-of v2, p1, Lcom/sleepycat/b/i/b/l;

    if-nez v2, :cond_3

    move v0, v1

    .line 100
    goto :goto_0

    .line 102
    :cond_3
    check-cast p1, Lcom/sleepycat/b/i/b/l;

    .line 103
    iget-object v2, p0, Lcom/sleepycat/b/i/b/l;->a:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 104
    iget-object v2, p1, Lcom/sleepycat/b/i/b/l;->a:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 105
    goto :goto_0

    .line 107
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/b/i/b/l;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/sleepycat/b/i/b/l;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 108
    goto :goto_0

    .line 110
    :cond_5
    iget-object v2, p0, Lcom/sleepycat/b/i/b/l;->c:Lcom/sleepycat/b/i/c/b/x;

    iget-object v3, p1, Lcom/sleepycat/b/i/b/l;->c:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/i/c/b/x;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 111
    goto :goto_0

    .line 113
    :cond_6
    iget v2, p0, Lcom/sleepycat/b/i/b/l;->b:I

    iget v3, p1, Lcom/sleepycat/b/i/b/l;->b:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 114
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Lcom/sleepycat/b/i/b/ah;->hashCode()I

    move-result v0

    .line 84
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/sleepycat/b/i/b/l;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 86
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/sleepycat/b/i/b/l;->c:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/b/x;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/sleepycat/b/i/b/l;->b:I

    add-int/2addr v0, v1

    .line 88
    return v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/b/l;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
