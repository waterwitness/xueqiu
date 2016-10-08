.class public final Lcom/snowballfinance/messageplatform/b/f;
.super Ljava/lang/Object;
.source "Version.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/snowballfinance/messageplatform/b/f;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v1, p0, Lcom/snowballfinance/messageplatform/b/f;->a:I

    .line 16
    iput v1, p0, Lcom/snowballfinance/messageplatform/b/f;->b:I

    .line 18
    iput v1, p0, Lcom/snowballfinance/messageplatform/b/f;->c:I

    .line 1045
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v2

    .line 41
    :goto_0
    if-eqz v0, :cond_2

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    .line 1045
    goto :goto_0

    .line 44
    :cond_2
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 45
    array-length v3, v0

    if-lez v3, :cond_3

    .line 46
    new-instance v3, Lcom/snowballfinance/messageplatform/b/g;

    invoke-direct {v3, p0, v1}, Lcom/snowballfinance/messageplatform/b/g;-><init>(Lcom/snowballfinance/messageplatform/b/f;B)V

    .line 47
    aget-object v4, v0, v1

    invoke-static {v3, v4}, Lcom/snowballfinance/messageplatform/b/f;->a(Lcom/snowballfinance/messageplatform/b/g;Ljava/lang/String;)V

    .line 48
    iget v4, v3, Lcom/snowballfinance/messageplatform/b/g;->b:I

    iput v4, p0, Lcom/snowballfinance/messageplatform/b/f;->a:I

    .line 49
    iget-object v3, v3, Lcom/snowballfinance/messageplatform/b/g;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/snowballfinance/messageplatform/b/f;->d:Ljava/lang/String;

    .line 51
    :cond_3
    array-length v3, v0

    if-le v3, v2, :cond_4

    .line 52
    new-instance v3, Lcom/snowballfinance/messageplatform/b/g;

    invoke-direct {v3, p0, v1}, Lcom/snowballfinance/messageplatform/b/g;-><init>(Lcom/snowballfinance/messageplatform/b/f;B)V

    .line 53
    aget-object v2, v0, v2

    invoke-static {v3, v2}, Lcom/snowballfinance/messageplatform/b/f;->a(Lcom/snowballfinance/messageplatform/b/g;Ljava/lang/String;)V

    .line 54
    iget v2, v3, Lcom/snowballfinance/messageplatform/b/g;->b:I

    iput v2, p0, Lcom/snowballfinance/messageplatform/b/f;->b:I

    .line 55
    iget-object v2, v3, Lcom/snowballfinance/messageplatform/b/g;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/snowballfinance/messageplatform/b/f;->d:Ljava/lang/String;

    .line 57
    :cond_4
    array-length v2, v0

    if-le v2, v5, :cond_5

    .line 58
    new-instance v2, Lcom/snowballfinance/messageplatform/b/g;

    invoke-direct {v2, p0, v1}, Lcom/snowballfinance/messageplatform/b/g;-><init>(Lcom/snowballfinance/messageplatform/b/f;B)V

    .line 59
    aget-object v1, v0, v5

    invoke-static {v2, v1}, Lcom/snowballfinance/messageplatform/b/f;->a(Lcom/snowballfinance/messageplatform/b/g;Ljava/lang/String;)V

    .line 60
    iget v1, v2, Lcom/snowballfinance/messageplatform/b/g;->b:I

    iput v1, p0, Lcom/snowballfinance/messageplatform/b/f;->c:I

    .line 61
    iget-object v1, v2, Lcom/snowballfinance/messageplatform/b/g;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snowballfinance/messageplatform/b/f;->d:Ljava/lang/String;

    .line 63
    :cond_5
    array-length v1, v0

    if-le v1, v6, :cond_6

    .line 64
    aget-object v0, v0, v6

    iput-object v0, p0, Lcom/snowballfinance/messageplatform/b/f;->d:Ljava/lang/String;

    .line 66
    :cond_6
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/b/f;->e:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public static final a(Ljava/lang/String;)Lcom/snowballfinance/messageplatform/b/f;
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/snowballfinance/messageplatform/b/f;

    invoke-direct {v0, p0}, Lcom/snowballfinance/messageplatform/b/f;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Lcom/snowballfinance/messageplatform/b/g;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 122
    .line 5077
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    move v0, v1

    .line 122
    :goto_0
    if-eqz v0, :cond_5

    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/snowballfinance/messageplatform/b/g;->b:I

    .line 137
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 5080
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 5081
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 5082
    goto :goto_0

    .line 5080
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 5085
    goto :goto_0

    :cond_5
    move v0, v1

    .line 126
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 128
    if-eqz v2, :cond_6

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 129
    iget v4, p0, Lcom/snowballfinance/messageplatform/b/g;->b:I

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    int-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v5, v6

    mul-int/2addr v4, v5

    iput v4, p0, Lcom/snowballfinance/messageplatform/b/g;->b:I

    .line 130
    iget v4, p0, Lcom/snowballfinance/messageplatform/b/g;->b:I

    const/16 v5, 0xa

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    add-int/2addr v3, v4

    iput v3, p0, Lcom/snowballfinance/messageplatform/b/g;->b:I

    .line 126
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 132
    :cond_6
    iget-object v2, p0, Lcom/snowballfinance/messageplatform/b/g;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v1

    .line 133
    goto :goto_3
.end method


# virtual methods
.method public final a(Lcom/snowballfinance/messageplatform/b/f;)I
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Lcom/snowballfinance/messageplatform/b/f;->a:I

    .line 2025
    iget v1, p1, Lcom/snowballfinance/messageplatform/b/f;->a:I

    .line 71
    if-ne v0, v1, :cond_2

    .line 72
    iget v0, p0, Lcom/snowballfinance/messageplatform/b/f;->b:I

    .line 2029
    iget v1, p1, Lcom/snowballfinance/messageplatform/b/f;->b:I

    .line 72
    if-ne v0, v1, :cond_1

    .line 73
    iget v0, p0, Lcom/snowballfinance/messageplatform/b/f;->c:I

    .line 2033
    iget v1, p1, Lcom/snowballfinance/messageplatform/b/f;->c:I

    .line 73
    if-ne v0, v1, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 82
    :goto_0
    return v0

    .line 76
    :cond_0
    iget v0, p0, Lcom/snowballfinance/messageplatform/b/f;->c:I

    .line 3033
    iget v1, p1, Lcom/snowballfinance/messageplatform/b/f;->c:I

    .line 76
    sub-int/2addr v0, v1

    goto :goto_0

    .line 79
    :cond_1
    iget v0, p0, Lcom/snowballfinance/messageplatform/b/f;->b:I

    .line 4029
    iget v1, p1, Lcom/snowballfinance/messageplatform/b/f;->b:I

    .line 79
    sub-int/2addr v0, v1

    goto :goto_0

    .line 82
    :cond_2
    iget v0, p0, Lcom/snowballfinance/messageplatform/b/f;->a:I

    .line 5025
    iget v1, p1, Lcom/snowballfinance/messageplatform/b/f;->a:I

    .line 82
    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lcom/snowballfinance/messageplatform/b/f;

    invoke-virtual {p0, p1}, Lcom/snowballfinance/messageplatform/b/f;->a(Lcom/snowballfinance/messageplatform/b/f;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 88
    instance-of v0, p1, Lcom/snowballfinance/messageplatform/b/f;

    if-eqz v0, :cond_1

    .line 89
    check-cast p1, Lcom/snowballfinance/messageplatform/b/f;

    invoke-virtual {p0, p1}, Lcom/snowballfinance/messageplatform/b/f;->a(Lcom/snowballfinance/messageplatform/b/f;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 91
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {p1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 94
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/b/f;->e:Ljava/lang/String;

    return-object v0
.end method
