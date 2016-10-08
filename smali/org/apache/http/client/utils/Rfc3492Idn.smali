.class public Lorg/apache/http/client/utils/Rfc3492Idn;
.super Ljava/lang/Object;
.source "Rfc3492Idn.java"

# interfaces
.implements Lorg/apache/http/client/utils/Idn;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final ACE_PREFIX:Ljava/lang/String; = "xn--"

.field private static final base:I = 0x24

.field private static final damp:I = 0x2bc

.field private static final delimiter:C = '-'

.field private static final initial_bias:I = 0x48

.field private static final initial_n:I = 0x80

.field private static final skew:I = 0x26

.field private static final tmax:I = 0x1a

.field private static final tmin:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private adapt(IIZ)I
    .locals 3

    .prologue
    .line 55
    if-eqz p3, :cond_0

    .line 56
    div-int/lit16 v0, p1, 0x2bc

    .line 60
    :goto_0
    div-int v1, v0, p2

    add-int/2addr v1, v0

    .line 61
    const/4 v0, 0x0

    .line 62
    :goto_1
    const/16 v2, 0x1c7

    if-le v1, v2, :cond_1

    .line 63
    div-int/lit8 v1, v1, 0x23

    .line 64
    add-int/lit8 v0, v0, 0x24

    goto :goto_1

    .line 58
    :cond_0
    div-int/lit8 v0, p1, 0x2

    goto :goto_0

    .line 66
    :cond_1
    mul-int/lit8 v2, v1, 0x24

    add-int/lit8 v1, v1, 0x26

    div-int v1, v2, v1

    add-int/2addr v0, v1

    return v0
.end method

.method private digit(C)I
    .locals 3

    .prologue
    .line 70
    const/16 v0, 0x41

    if-lt p1, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_0

    .line 71
    add-int/lit8 v0, p1, -0x41

    .line 77
    :goto_0
    return v0

    .line 73
    :cond_0
    const/16 v0, 0x61

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_1

    .line 74
    add-int/lit8 v0, p1, -0x61

    goto :goto_0

    .line 76
    :cond_1
    const/16 v0, 0x30

    if-lt p1, v0, :cond_2

    const/16 v0, 0x39

    if-gt p1, v0, :cond_2

    .line 77
    add-int/lit8 v0, p1, -0x30

    add-int/lit8 v0, v0, 0x1a

    goto :goto_0

    .line 79
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "illegal digit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 101
    const/16 v1, 0x80

    .line 103
    const/16 v0, 0x48

    .line 104
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 105
    const/16 v3, 0x2d

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 106
    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 107
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 108
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move v3, v1

    move v1, v2

    .line 111
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 114
    const/16 v4, 0x24

    move v5, v6

    move v7, v1

    .line 115
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 118
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 119
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-direct {p0, v8}, Lorg/apache/http/client/utils/Rfc3492Idn;->digit(C)I

    move-result v10

    .line 121
    mul-int v8, v10, v5

    add-int/2addr v7, v8

    .line 123
    add-int/lit8 v8, v0, 0x1

    if-gt v4, v8, :cond_0

    move v8, v6

    .line 130
    :goto_2
    if-lt v10, v8, :cond_2

    .line 133
    rsub-int/lit8 v8, v8, 0x24

    mul-int/2addr v5, v8

    .line 114
    add-int/lit8 v4, v4, 0x24

    goto :goto_1

    .line 125
    :cond_0
    add-int/lit8 v8, v0, 0x1a

    if-lt v4, v8, :cond_1

    .line 126
    const/16 v8, 0x1a

    goto :goto_2

    .line 128
    :cond_1
    sub-int v8, v4, v0

    goto :goto_2

    .line 135
    :cond_2
    sub-int v4, v7, v1

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    if-nez v1, :cond_3

    move v0, v6

    :goto_3
    invoke-direct {p0, v4, v5, v0}, Lorg/apache/http/client/utils/Rfc3492Idn;->adapt(IIZ)I

    move-result v0

    .line 136
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    div-int v1, v7, v1

    add-int/2addr v3, v1

    .line 137
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int v1, v7, v1

    .line 139
    int-to-char v4, v3

    invoke-virtual {v9, v1, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 140
    add-int/lit8 v1, v1, 0x1

    .line 141
    goto :goto_0

    :cond_3
    move v0, v2

    .line 135
    goto :goto_3

    .line 142
    :cond_4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    move v3, v1

    move v1, v2

    goto :goto_0
.end method

.method public toUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 85
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v0, "."

    invoke-direct {v2, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 89
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    :cond_0
    const-string v3, "xn--"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/client/utils/Rfc3492Idn;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
