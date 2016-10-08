.class public final Lorg/apache/cordova/ac;
.super Ljava/lang/Object;
.source "Whitelist.java"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/cordova/ad;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/ac;->a:Ljava/util/ArrayList;

    .line 101
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/cordova/ac;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 118
    :try_start_0
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 119
    const-string v0, "Whitelist"

    const-string v1, "Unlimited access to network resources"

    invoke-static {v0, v1}, Lorg/apache/cordova/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/ac;->a:Ljava/util/ArrayList;

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const-string v0, "^((\\*|[A-Za-z-]+)://)?(\\*|((\\*\\.)?[^*/:]+))?(:(\\d+))?(/.*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 124
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    const-string v3, "file"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "content"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    if-nez v0, :cond_3

    const-string v0, "*"

    .line 130
    :cond_3
    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 131
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 132
    if-nez v2, :cond_4

    .line 134
    iget-object v2, p0, Lorg/apache/cordova/ac;->a:Ljava/util/ArrayList;

    new-instance v4, Lorg/apache/cordova/ad;

    const-string v5, "http"

    invoke-direct {v4, v5, v0, v3, v1}, Lorg/apache/cordova/ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v2, p0, Lorg/apache/cordova/ac;->a:Ljava/util/ArrayList;

    new-instance v4, Lorg/apache/cordova/ad;

    const-string v5, "https"

    invoke-direct {v4, v5, v0, v3, v1}, Lorg/apache/cordova/ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    const-string v0, "Whitelist"

    const-string v1, "Failed to add origin %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lorg/apache/cordova/o;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 137
    :cond_4
    :try_start_1
    iget-object v4, p0, Lorg/apache/cordova/ac;->a:Ljava/util/ArrayList;

    new-instance v5, Lorg/apache/cordova/ad;

    invoke-direct {v5, v2, v0, v3, v1}, Lorg/apache/cordova/ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
