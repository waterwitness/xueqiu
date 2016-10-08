.class public final Lorg/apache/cordova/c;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field private static c:Ljava/lang/String;

.field private static d:Lorg/apache/cordova/c;


# instance fields
.field private a:Lorg/apache/cordova/ac;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/cordova/c;->d:Lorg/apache/cordova/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/apache/cordova/ac;

    invoke-direct {v0}, Lorg/apache/cordova/ac;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/c;->a:Lorg/apache/cordova/ac;

    .line 60
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/apache/cordova/ac;

    invoke-direct {v0}, Lorg/apache/cordova/ac;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/c;->a:Lorg/apache/cordova/ac;

    .line 63
    if-nez p1, :cond_1

    .line 64
    const-string v0, "CordovaLog"

    const-string v1, "There is no activity. Is this on the lock screen?"

    invoke-static {v0, v1}, Lorg/apache/cordova/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config"

    const-string v2, "xml"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 70
    if-nez v0, :cond_2

    .line 72
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config"

    const-string v2, "xml"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 73
    if-nez v0, :cond_2

    .line 74
    const-string v0, "CordovaLog"

    const-string v1, "config.xml missing. Ignoring..."

    invoke-static {v0, v1}, Lorg/apache/cordova/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_2
    iget-object v1, p0, Lorg/apache/cordova/c;->a:Lorg/apache/cordova/ac;

    const-string v2, "file:///*"

    invoke-virtual {v1, v2}, Lorg/apache/cordova/ac;->a(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lorg/apache/cordova/c;->a:Lorg/apache/cordova/ac;

    const-string v2, "content:///*"

    invoke-virtual {v1, v2}, Lorg/apache/cordova/ac;->a(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lorg/apache/cordova/c;->a:Lorg/apache/cordova/ac;

    const-string v2, "data:*"

    invoke-virtual {v1, v2}, Lorg/apache/cordova/ac;->a(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 85
    const/4 v0, -0x1

    move v1, v0

    .line 86
    :goto_1
    if-eq v1, v8, :cond_0

    .line 87
    const/4 v0, 0x2

    if-ne v1, v0, :cond_4

    .line 88
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v3, "access"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 91
    const-string v0, "origin"

    invoke-interface {v2, v7, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    const-string v3, "subdomains"

    invoke-interface {v2, v7, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    if-eqz v0, :cond_4

    .line 94
    iget-object v4, p0, Lorg/apache/cordova/c;->a:Lorg/apache/cordova/ac;

    if-eqz v3, :cond_3

    const-string v5, "true"

    invoke-virtual {v3, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v4, v0}, Lorg/apache/cordova/ac;->a(Ljava/lang/String;)V

    .line 191
    :cond_4
    :goto_2
    :try_start_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    move v1, v0

    .line 196
    goto :goto_1

    .line 97
    :cond_5
    const-string v3, "log"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 98
    const-string v0, "level"

    invoke-interface {v2, v7, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    const-string v3, "Config"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The <log> tag is deprecated. Use <preference name=\"loglevel\" value=\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"/> instead."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    if-eqz v0, :cond_4

    .line 101
    invoke-static {v0}, Lorg/apache/cordova/o;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 104
    :cond_6
    const-string v3, "preference"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 105
    const-string v0, "name"

    invoke-interface {v2, v7, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 115
    const-string v0, "LogLevel"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 116
    const-string v0, "value"

    invoke-interface {v2, v7, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Lorg/apache/cordova/o;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 118
    :cond_7
    const-string v0, "SplashScreen"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 119
    const-string v0, "value"

    invoke-interface {v2, v7, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    if-nez v0, :cond_8

    .line 123
    const-string v0, "splash"

    .line 125
    :cond_8
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "drawable"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 127
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_2

    .line 129
    :cond_9
    const-string v0, "BackgroundColor"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 130
    const-string v0, "value"

    const/high16 v4, -0x1000000

    invoke-interface {v2, v7, v0, v4}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 131
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_2

    .line 133
    :cond_a
    const-string v0, "LoadUrlTimeoutValue"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 134
    const-string v0, "value"

    const/16 v4, 0x4e20

    invoke-interface {v2, v7, v0, v4}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 135
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_2

    .line 137
    :cond_b
    const-string v0, "SplashScreenDelay"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 138
    const-string v0, "value"

    const/16 v4, 0xbb8

    invoke-interface {v2, v7, v0, v4}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 139
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_2

    .line 141
    :cond_c
    const-string v0, "KeepRunning"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 143
    const-string v0, "value"

    invoke-interface {v2, v7, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 144
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_2

    .line 146
    :cond_d
    const-string v0, "InAppBrowserStorageEnabled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 148
    const-string v0, "value"

    invoke-interface {v2, v7, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 149
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_2

    .line 151
    :cond_e
    const-string v0, "DisallowOverscroll"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 153
    const-string v0, "value"

    invoke-interface {v2, v7, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 154
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_2

    .line 156
    :cond_f
    const-string v0, "errorurl"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 158
    const-string v0, "value"

    invoke-interface {v2, v7, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/cordova/c;->c:Ljava/lang/String;

    goto/16 :goto_2

    .line 162
    :cond_10
    const-string v0, "value"

    invoke-interface {v2, v7, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 169
    :cond_11
    const-string v3, "content"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    const-string v0, "src"

    invoke-interface {v2, v7, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    const-string v3, "CordovaLog"

    const-string v4, "Found start page location: %s"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v0, v5, v9

    invoke-static {v3, v4, v5}, Lorg/apache/cordova/o;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    if-eqz v0, :cond_4

    .line 175
    const-string v3, "^[a-z-]+://"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 176
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 177
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 178
    iput-object v0, p0, Lorg/apache/cordova/c;->b:Ljava/lang/String;

    goto/16 :goto_2

    .line 180
    :cond_12
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_13

    .line 181
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file:///android_asset/www/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/c;->b:Ljava/lang/String;

    goto/16 :goto_2

    .line 193
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_1

    .line 195
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lorg/apache/cordova/c;

    invoke-direct {v0, p0}, Lorg/apache/cordova/c;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lorg/apache/cordova/c;->d:Lorg/apache/cordova/c;

    .line 49
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 207
    sget-object v0, Lorg/apache/cordova/c;->d:Lorg/apache/cordova/c;

    if-nez v0, :cond_0

    .line 208
    const-string v0, "Config"

    const-string v1, "Config was not initialised. Did you forget to Config.init(this)?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_0
    return-void

    .line 211
    :cond_0
    sget-object v0, Lorg/apache/cordova/c;->d:Lorg/apache/cordova/c;

    iget-object v0, v0, Lorg/apache/cordova/c;->a:Lorg/apache/cordova/ac;

    invoke-virtual {v0, p0}, Lorg/apache/cordova/ac;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 221
    sget-object v0, Lorg/apache/cordova/c;->d:Lorg/apache/cordova/c;

    if-nez v0, :cond_0

    .line 222
    const-string v0, "Config"

    const-string v2, "Config was not initialised. Did you forget to Config.init(this)?"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1164
    :goto_0
    return v0

    .line 225
    :cond_0
    sget-object v0, Lorg/apache/cordova/c;->d:Lorg/apache/cordova/c;

    iget-object v0, v0, Lorg/apache/cordova/c;->a:Lorg/apache/cordova/ac;

    .line 1156
    iget-object v3, v0, Lorg/apache/cordova/ac;->a:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    move v0, v2

    goto :goto_0

    .line 1158
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1160
    iget-object v0, v0, Lorg/apache/cordova/ac;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1161
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1162
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/ad;

    .line 1163
    invoke-virtual {v0, v3}, Lorg/apache/cordova/ad;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 1164
    goto :goto_0

    :cond_3
    move v0, v1

    .line 225
    goto :goto_0
.end method
