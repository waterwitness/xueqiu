.class public final Lcom/e/a/a;
.super Ljava/lang/Object;
.source "ContentType.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lcom/e/a/a;

.field public static final b:Lcom/e/a/a;

.field public static final c:Lcom/e/a/a;

.field public static final d:Lcom/e/a/a;

.field public static final e:Lcom/e/a/a;

.field public static final f:Lcom/e/a/a;

.field public static final g:Lcom/e/a/a;

.field public static final h:Lcom/e/a/a;

.field public static final i:Lcom/e/a/a;

.field public static final j:Lcom/e/a/a;

.field public static final k:Lcom/e/a/a;

.field public static final l:Lcom/e/a/a;

.field public static final m:Lcom/e/a/a;

.field public static final n:Lcom/e/a/a;


# instance fields
.field public final o:Ljava/lang/String;

.field public final p:Ljava/nio/charset/Charset;

.field private final q:[Lorg/apache/http/NameValuePair;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    const-string v0, "application/atom+xml"

    sget-object v1, Lcom/e/a;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcom/e/a/a;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/e/a/a;

    move-result-object v0

    sput-object v0, Lcom/e/a/a;->a:Lcom/e/a/a;

    .line 40
    const-string v0, "application/x-www-form-urlencoded"

    sget-object v1, Lcom/e/a;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcom/e/a/a;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/e/a/a;

    move-result-object v0

    sput-object v0, Lcom/e/a/a;->b:Lcom/e/a/a;

    .line 42
    const-string v0, "application/json"

    sget-object v1, Lcom/e/a;->a:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcom/e/a/a;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/e/a/a;

    move-result-object v0

    sput-object v0, Lcom/e/a/a;->c:Lcom/e/a/a;

    .line 44
    const-string v0, "application/octet-stream"

    invoke-static {v0, v2}, Lcom/e/a/a;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/e/a/a;

    move-result-object v0

    sput-object v0, Lcom/e/a/a;->d:Lcom/e/a/a;

    .line 46
    const-string v0, "application/svg+xml"

    sget-object v1, Lcom/e/a;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcom/e/a/a;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/e/a/a;

    move-result-object v0

    sput-object v0, Lcom/e/a/a;->e:Lcom/e/a/a;

    .line 48
    const-string v0, "application/xhtml+xml"

    sget-object v1, Lcom/e/a;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcom/e/a/a;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/e/a/a;

    move-result-object v0

    sput-object v0, Lcom/e/a/a;->f:Lcom/e/a/a;

    .line 50
    const-string v0, "application/xml"

    sget-object v1, Lcom/e/a;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcom/e/a/a;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/e/a/a;

    move-result-object v0

    sput-object v0, Lcom/e/a/a;->g:Lcom/e/a/a;

    .line 52
    const-string v0, "multipart/form-data"

    sget-object v1, Lcom/e/a;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcom/e/a/a;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/e/a/a;

    move-result-object v0

    sput-object v0, Lcom/e/a/a;->h:Lcom/e/a/a;

    .line 54
    const-string v0, "text/html"

    sget-object v1, Lcom/e/a;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcom/e/a/a;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/e/a/a;

    move-result-object v0

    sput-object v0, Lcom/e/a/a;->i:Lcom/e/a/a;

    .line 56
    const-string v0, "text/plain"

    sget-object v1, Lcom/e/a;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcom/e/a/a;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/e/a/a;

    move-result-object v0

    sput-object v0, Lcom/e/a/a;->j:Lcom/e/a/a;

    .line 58
    const-string v0, "text/xml"

    sget-object v1, Lcom/e/a;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcom/e/a/a;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/e/a/a;

    move-result-object v0

    sput-object v0, Lcom/e/a/a;->k:Lcom/e/a/a;

    .line 60
    const-string v0, "*/*"

    invoke-static {v0, v2}, Lcom/e/a/a;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/e/a/a;

    move-result-object v0

    sput-object v0, Lcom/e/a/a;->l:Lcom/e/a/a;

    .line 64
    sget-object v0, Lcom/e/a/a;->j:Lcom/e/a/a;

    sput-object v0, Lcom/e/a/a;->m:Lcom/e/a/a;

    .line 65
    sget-object v0, Lcom/e/a/a;->d:Lcom/e/a/a;

    sput-object v0, Lcom/e/a/a;->n:Lcom/e/a/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/e/a/a;->o:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/e/a/a;->p:Ljava/nio/charset/Charset;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/e/a/a;->q:[Lorg/apache/http/NameValuePair;

    .line 77
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/e/a/a;
    .locals 2

    .prologue
    .line 162
    new-instance v0, Lcom/e/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/e/a/a;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/e/a/a;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 149
    const-string v2, "MIME type"

    move v0, v1

    .line 2026
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2027
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1050
    :goto_1
    if-eqz v1, :cond_2

    .line 1051
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " may not be blank"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2026
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2031
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 149
    :cond_2
    check-cast p0, Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {v0}, Lcom/e/a/a;->b(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "MIME type may not contain reserved characters"

    .line 3018
    if-nez v1, :cond_3

    .line 3019
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_3
    new-instance v1, Lcom/e/a/a;

    invoke-direct {v1, v0, p1}, Lcom/e/a/a;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v1
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 131
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 132
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 133
    const/16 v3, 0x22

    if-eq v2, v3, :cond_0

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_0

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_1

    .line 137
    :cond_0
    :goto_1
    return v1

    .line 131
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 118
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 119
    iget-object v1, p0, Lcom/e/a/a;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/e/a/a;->q:[Lorg/apache/http/NameValuePair;

    if-eqz v1, :cond_1

    .line 121
    const-string v1, "; "

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 122
    sget-object v1, Lorg/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;

    iget-object v2, p0, Lcom/e/a/a;->q:[Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/http/message/BasicHeaderValueFormatter;->formatParameters(Lorg/apache/http/util/CharArrayBuffer;[Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    .line 127
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/e/a/a;->p:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_0

    .line 124
    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/e/a/a;->p:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_0
.end method
