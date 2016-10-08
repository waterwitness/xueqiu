.class final Lcom/sleepycat/b/g/x;
.super Ljava/lang/Object;
.source "JEFileFilter.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field a:[Ljava/lang/String;

.field b:J

.field c:J


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/b/g/x;->b:J

    .line 20
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/g/x;->c:J

    .line 23
    iput-object p1, p0, Lcom/sleepycat/b/g/x;->a:[Ljava/lang/String;

    .line 24
    return-void
.end method

.method constructor <init>([Ljava/lang/String;JJ)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/b/g/x;->b:J

    .line 20
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/g/x;->c:J

    .line 42
    iput-object p1, p0, Lcom/sleepycat/b/g/x;->a:[Ljava/lang/String;

    .line 43
    iput-wide p2, p0, Lcom/sleepycat/b/g/x;->b:J

    .line 44
    iput-wide p4, p0, Lcom/sleepycat/b/g/x;->c:J

    .line 45
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 48
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/sleepycat/b/g/x;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/sleepycat/b/g/x;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    const/4 v1, 0x1

    .line 53
    :cond_0
    return v1

    .line 48
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    .line 61
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v0, "."

    invoke-direct {v3, p2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    .line 64
    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    if-ne v0, v5, :cond_1

    .line 65
    :cond_0
    if-ne v0, v5, :cond_2

    move v0, v1

    .line 66
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 68
    if-eqz v0, :cond_3

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 71
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    invoke-direct {p0, v5}, Lcom/sleepycat/b/g/x;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 77
    const/16 v5, 0x10

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    .line 78
    iget-wide v6, p0, Lcom/sleepycat/b/g/x;->b:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v6, v4, v6

    if-gez v6, :cond_4

    move v4, v2

    .line 87
    :goto_2
    if-eqz v0, :cond_6

    .line 89
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v1

    .line 98
    :cond_1
    :goto_3
    return v2

    :cond_2
    move v0, v2

    .line 65
    goto :goto_0

    .line 68
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 80
    :cond_4
    :try_start_2
    iget-wide v6, p0, Lcom/sleepycat/b/g/x;->c:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    iget-wide v4, p0, Lcom/sleepycat/b/g/x;->c:J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    :cond_5
    move v4, v1

    .line 82
    goto :goto_2

    .line 85
    :catch_0
    move-exception v4

    move v4, v2

    goto :goto_2

    .line 92
    :catch_1
    move-exception v0

    goto :goto_3

    :cond_6
    move v2, v4

    goto :goto_3

    :cond_7
    move v4, v2

    goto :goto_2
.end method
