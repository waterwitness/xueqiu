.class Lcom/sleepycat/b/a/p;
.super Ljava/lang/Object;
.source "FilesToMigrate.java"


# static fields
.field static final synthetic c:Z


# instance fields
.field a:Z

.field b:J

.field private final d:Lcom/sleepycat/b/c/ad;

.field private e:[J

.field private f:I

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/sleepycat/b/a/p;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/a/p;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sleepycat/b/c/ad;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/sleepycat/b/a/p;->d:Lcom/sleepycat/b/c/ad;

    .line 3392
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 64
    sget-object v2, Lcom/sleepycat/b/b/d;->aY:Lcom/sleepycat/b/b/b;

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-direct {p0, v0}, Lcom/sleepycat/b/a/p;->a(Ljava/lang/String;)V

    .line 4392
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 68
    sget-object v2, Lcom/sleepycat/b/b/d;->aZ:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/a/p;->f:I

    .line 70
    iget v0, p0, Lcom/sleepycat/b/a/p;->f:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 71
    const/16 v0, 0x8

    iput v0, p0, Lcom/sleepycat/b/a/p;->f:I

    .line 74
    :cond_0
    iget v0, p0, Lcom/sleepycat/b/a/p;->f:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sleepycat/b/a/p;->g:Z

    .line 75
    iput-boolean v1, p0, Lcom/sleepycat/b/a/p;->a:Z

    .line 76
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/a/p;->b:J

    .line 77
    return-void

    :cond_1
    move v0, v1

    .line 74
    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 169
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 170
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/a/p;->e:[J

    .line 238
    :cond_1
    return-void

    .line 172
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sleepycat/b/b/d;->aY:Lcom/sleepycat/b/b/b;

    .line 6090
    iget-object v1, v1, Lcom/sleepycat/b/b/b;->a:Ljava/lang/String;

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 176
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v0, ",-"

    const/4 v1, 0x1

    invoke-direct {v5, p1, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 180
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 182
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 185
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 188
    const/16 v1, 0x10

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 196
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 199
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 200
    const-string v1, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-wide v0, v2

    .line 228
    :goto_1
    sget-boolean v7, Lcom/sleepycat/b/a/p;->c:Z

    if-nez v7, :cond_7

    const-wide/16 v8, -0x1

    cmp-long v7, v0, v8

    if-nez v7, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 190
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Invalid hex file number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :cond_3
    const-string v1, "-"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 205
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 206
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 208
    const/16 v1, 0x10

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    goto :goto_1

    .line 210
    :catch_1
    move-exception v1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Invalid hex file number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Expected file number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Expected \'-\' or \',\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    move-wide v0, v2

    .line 225
    goto/16 :goto_1

    .line 229
    :cond_7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 233
    :cond_8
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/sleepycat/b/a/p;->e:[J

    .line 234
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/sleepycat/b/a/p;->e:[J

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 235
    iget-object v2, p0, Lcom/sleepycat/b/a/p;->e:[J

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 234
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method


# virtual methods
.method final a(Ljava/util/SortedMap;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/b/a/o;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 84
    iget-boolean v0, p0, Lcom/sleepycat/b/a/p;->a:Z

    if-eqz v0, :cond_1

    move v1, v2

    .line 123
    :cond_0
    :goto_0
    return v1

    .line 90
    :cond_1
    iget-wide v4, p0, Lcom/sleepycat/b/a/p;->b:J

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 5147
    iget-object v0, p0, Lcom/sleepycat/b/a/p;->e:[J

    if-eqz v0, :cond_5

    move v0, v1

    .line 5148
    :goto_2
    iget-object v8, p0, Lcom/sleepycat/b/a/p;->e:[J

    array-length v8, v8

    if-ge v0, v8, :cond_5

    .line 5149
    iget-object v8, p0, Lcom/sleepycat/b/a/p;->e:[J

    aget-wide v8, v8, v0

    .line 5150
    iget-object v10, p0, Lcom/sleepycat/b/a/p;->e:[J

    add-int/lit8 v11, v0, 0x1

    aget-wide v10, v10, v11

    .line 5151
    cmp-long v8, v4, v8

    if-ltz v8, :cond_4

    cmp-long v8, v4, v10

    if-gtz v8, :cond_4

    move v0, v2

    .line 91
    :goto_3
    if-eqz v0, :cond_6

    .line 118
    :cond_3
    :goto_4
    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 119
    iput-wide v4, p0, Lcom/sleepycat/b/a/p;->b:J

    .line 120
    iput-boolean v2, p0, Lcom/sleepycat/b/a/p;->a:Z

    move v1, v2

    .line 121
    goto :goto_0

    .line 5148
    :cond_4
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_5
    move v0, v1

    .line 5156
    goto :goto_3

    .line 95
    :cond_6
    iget-boolean v0, p0, Lcom/sleepycat/b/a/p;->g:Z

    if-eqz v0, :cond_2

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/a/p;->d:Lcom/sleepycat/b/c/ad;

    .line 5375
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    .line 97
    invoke-virtual {v0, v4, v5}, Lcom/sleepycat/b/g/m;->e(J)I

    move-result v0

    .line 99
    iget v8, p0, Lcom/sleepycat/b/a/p;->f:I

    if-lt v0, v8, :cond_3

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/a/p;->g:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 111
    :catch_0
    move-exception v0

    .line 113
    iput-wide v4, p0, Lcom/sleepycat/b/a/p;->b:J

    .line 114
    throw v0

    :cond_7
    move-wide v4, v6

    goto :goto_4
.end method
