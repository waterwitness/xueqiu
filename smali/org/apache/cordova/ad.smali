.class final Lorg/apache/cordova/ad;
.super Ljava/lang/Object;
.source "Whitelist.java"


# instance fields
.field public a:Ljava/util/regex/Pattern;

.field public b:Ljava/util/regex/Pattern;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/ad;->a:Ljava/util/regex/Pattern;

    .line 60
    :goto_0
    const-string v0, "*"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/ad;->b:Ljava/util/regex/Pattern;

    .line 67
    :goto_1
    if-eqz p3, :cond_1

    const-string v0, "*"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 68
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/ad;->c:Ljava/lang/Integer;

    .line 72
    :goto_2
    if-eqz p4, :cond_2

    const-string v0, "/*"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 73
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/ad;->d:Ljava/util/regex/Pattern;

    .line 79
    :goto_3
    return-void

    .line 58
    :cond_3
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/cordova/ad;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/ad;->a:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    new-instance v0, Ljava/net/MalformedURLException;

    const-string v1, "Port must be a number"

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_4
    :try_start_1
    const-string v0, "*."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "([a-z0-9.-]*\\.)?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/cordova/ad;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/ad;->b:Ljava/util/regex/Pattern;

    goto :goto_1

    .line 65
    :cond_5
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/apache/cordova/ad;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/ad;->b:Ljava/util/regex/Pattern;

    goto :goto_1

    .line 70
    :cond_6
    const/16 v0, 0xa

    invoke-static {p3, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/ad;->c:Ljava/lang/Integer;

    goto :goto_2

    .line 75
    :cond_7
    const/4 v0, 0x1

    invoke-static {p4, v0}, Lorg/apache/cordova/ad;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/ad;->d:Ljava/util/regex/Pattern;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .prologue
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 43
    const/16 v3, 0x2a

    if-ne v2, v3, :cond_1

    if-eqz p1, :cond_1

    .line 44
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    :cond_0
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_1
    const-string v3, "\\.[]{}()^$?+|"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_0

    .line 46
    const/16 v3, 0x5c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 84
    :try_start_0
    iget-object v1, p0, Lorg/apache/cordova/ad;->a:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/cordova/ad;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/ad;->b:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/cordova/ad;->b:Ljava/util/regex/Pattern;

    .line 85
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    iget-object v1, p0, Lorg/apache/cordova/ad;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/cordova/ad;->c:Ljava/lang/Integer;

    .line 86
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lorg/apache/cordova/ad;->d:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/cordova/ad;->d:Ljava/util/regex/Pattern;

    .line 87
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 90
    :cond_4
    :goto_0
    return v0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    const-string v2, "Whitelist"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/apache/cordova/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
